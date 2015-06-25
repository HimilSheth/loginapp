class ChannelsController < ApplicationController
  def new
    @channel = Channel.new
  end

  def create
    @channel = Channel.create(params[:channel])
    redirect_to @current_user
  end

  def show
    if logged_in?
      @post = Post.new
      @channel = Channel.find_by_id(params[:id])
      @posts = @channel.posts
      @user_posts = Channel.get_user_posts(@current_user,@channel)
      save_channel_id(@channel)
    else
      redirect_to login_path
    end
  end
end
