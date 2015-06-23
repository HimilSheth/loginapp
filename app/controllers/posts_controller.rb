class PostsController < ApplicationController
  def new
  end

  def create
    @post = Post.create(params[:post])
    @user = User.find(session[:user_id])
    @channel = Channel.find(session[:channel_id])
    @user.posts << @post
    @channel.posts << @post
    @channel.users << @users
    redirect_to @channel
  end

  def show
    @comment = Comment.new
    @post = Post.find(params[:id])
    @comments = @post.comments
    save_post(@post)
  end
end
