module SessionsHelper
  def current_user
    @current_user ||= User.find_by_id(session[:user_id])
  end

  def log_out
    session.delete(:user_id)
    @current_user = nil
  end

  def logged_in?
    !current_user.nil?
  end

  def login_and_redirect(user)
    session[:user_id] = user.id
    redirect_to(user)
  end
end
