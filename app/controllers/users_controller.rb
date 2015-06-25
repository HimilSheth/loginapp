class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def show
    @user = User.find(params[:id])
    @channels = Channel.all
    @channel = Channel.new
    if !logged_in?
      redirect_to login_path
    end
  end

  def create
    @user = User.new(params[:user])
    if @user.save
      login_and_redirect(@user)
    else
      render "new"
    end
  end
end
