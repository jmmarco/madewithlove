module ApplicationHelper
  def current_user
    User.find_by(email: session[:email])
  end

  def new_user
    User.new
  end
end
