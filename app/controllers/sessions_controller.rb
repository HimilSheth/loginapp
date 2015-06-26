
#
# [class description]
#
# @author [himil]
#
class SessionsController < ApplicationController


  #
  # [new description]
  #
  # @return [type] [description]
  def new
  end

    #
    # [create description]
    #
    # @return [type] [description]
  def create
    if @user = User.authenticate_by_password(params[:session])
      login_and_redirect(@user)
    else
      redirect_to login_path
    end
  end

  #
  # [destroy description]
  #
  # @return [type] [description]
  def destroy
    log_out
    redirect_to login_path
  end
end

