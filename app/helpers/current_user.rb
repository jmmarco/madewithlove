def current_user
  @user = User.find_by(email: session[:email])
end
