
#
# [module description]
#
# @author [himil]
#
module SessionsHelper

    #
    # [current_user description]
    #
    # @return [type] [description]
  def current_user
    @current_user ||= User.find_by_id(session[:user_id])
  end

  #
  # [log_out description]
  #
  # @return [type] [description]
  def log_out
    session.delete(:user_id)
    @current_user = nil
  end

  #
  # [logged_in? description]
  #
  # @return [type] [description]
  def logged_in?
    !current_user.nil?
  end

  #
  # [login_and_redirect description]
  # @param user [type] [description]
  #
  # @return [type] [description]
  def login_and_redirect(user)
    session[:user_id] = user.id
    redirect_to(user)
  end
end
