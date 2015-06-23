class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def show
    @user = User.find(params[:id])
    @channels = Channel.all
    @channel = Channel.new
   # byebug
 end

 def create
  @user = User.new(params[:user])
  if @user.save
    log_in @user
    redirect_to @user
  else
    render 'new' , notice: "Wrong Password"
  end
end
    #private
    #  def user_params
     #   byebug
     #   params.require(:user).permit(:name,:email,:password,:password_confirmation)

     # end
end
