class AuthController < ApplicationController
  # Google Oauth
  SCOPES = ['https://www.googleapis.com/auth/userinfo.email'].join(' ')

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
    redirect client.auth_code.authorize_url(:redirect_uri => redirect_uri,:scope => SCOPES,:access_type => "offline")
  end
end
