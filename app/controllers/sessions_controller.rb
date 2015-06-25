class SessionsController < ApplicationController
  def new
  end
  def create
    if @user = User.authenticate_by_password(params[:session])
      login_and_redirect(@user)
    else
      redirect_to login_path
    end
  end

  def destroy
    log_out
    redirect_to login_path
  end
end

