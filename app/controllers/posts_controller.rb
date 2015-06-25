class PostsController < ApplicationController
  def new
  end


  def create
    @post = Post.new(params[:post])
    @channel = Channel.find(session[:channel_id])
    Post.create_associations(@current_user,@post,@channel)
    redirect_to @channel
  end

  def show
    if logged_in?
      @comment = Comment.new
      @post = Post.find(params[:id])
      @comments = @post.comments
      @channel = Channel.find(session[:channel_id])
      save_post_id(@post)
    else
      redirect_to login_path
    end
  end

  def update
    @post = Post.find(session[:post_id])
    Post.upvote_post_by_one(@post,@current_user)
    redirect_to @post
  end
end
