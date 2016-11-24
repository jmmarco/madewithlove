class AuthController < ApplicationController
  # Google Oauth
  SCOPES = [
    'https://www.googleapis.com/auth/userinfo.email',
    'https://www.googleapis.com/auth/userinfo.profile'
  ].join(' ')

  unless G_API_CLIENT = ENV['CLIENT_ID']
    raise "You must specify the G_API_CLIENT env variable"
  end

  unless G_API_SECRET = ENV['CLIENT_SECRET']
    raise "You must specify the G_API_SECRET env veriable"
  end

  def client
    client ||= OAuth2::Client.new(G_API_CLIENT, G_API_SECRET, {
      :site => 'https://accounts.google.com',
      :authorize_url => "/o/oauth2/auth",
      :token_url => "/o/oauth2/token"
      })
  end

  def new
    redirect_to client.auth_code.authorize_url(:redirect_uri => redirect_uri,:scope => SCOPES,:access_type => "offline")
  end

  def callback
    access_token = client.auth_code.get_token(params[:code], :redirect_uri => redirect_uri)
    @message = "Successfully authenticated with the server"
    @access_token = access_token.token

    profile_json = access_token.get('https://www.googleapis.com/oauth2/v1/userinfo?alt=json')
    data = JSON.parse(profile_json.body)
    @email = data['email']
    @first_name = data['given_name']
    @last_name = data['family_name']
    @avatar = data['picture']


    session[:email] = @email
    @user = User.find_or_create_by(email: @email, first_name: @first_name, last_name: @last_name, avatar: @avatar)
    @user.oauth_token = @access_token
    @user.save

    redirect_to index_path_url
  end

  def clear
    session.clear
    redirect_to index_path_url
  end

  # def success
  #   redirect_to index_path
  # end

  def redirect_uri
    uri = URI.parse(request.url)
    uri.path = '/oauth2callback'
    uri.query = nil
    uri.to_s
  end

end
