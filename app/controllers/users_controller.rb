
#
# [class description]
#
# @author [himil]
#
class UsersController < ApplicationController

  #
  # [new description]
  #
  # @return [type] [description]
  def new
    @user = User.new
  end

  #
  # [show description]
  #
  # @return [type] [description]
  def show
    @user = User.find(params[:id])
    @channels = Channel.all
    @channel = Channel.new
    if !logged_in?
      redirect_to login_path
    end
  end

  #
  # [create description]
  #
  # @return [type] [description]
  def create
    @user = User.new(params[:user])
    if @user.save
      login_and_redirect(@user)
    else
      render "new"
    end
  end
end
