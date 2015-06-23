class ChannelsController < ApplicationController
  def new
    @channel = Channel.new
  end

  def create
    @channel = Channel.create(params[:channel])
    @user = User.find_by_id(session[:user_id])
    redirect_to @user
  end

  def show
   #  byebug
    @post = Post.new
    @channel = Channel.find_by_id(params[:id])
    @posts = @channel.posts
    current_user
    @user_posts = @current_user.posts.where(:channel_id => @channel.id)
    save_channel(@channel)
  end
end
