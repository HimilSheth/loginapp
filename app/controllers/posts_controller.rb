class PostsController < ApplicationController
  def new
  end

  def create
    @post = Post.create(params[:post])
    current_user
    @channel = Channel.find(session[:channel_id])
    @current_user.posts << @post
    @channel.posts << @post
    @channel.users << @current_user
    redirect_to @channel
  end

  def show
    @comment = Comment.new
    @post = Post.find(params[:id])
    @comments = @post.comments
    save_post(@post)
  end

  def update
    @post = Post.find(session[:post_id])
    current_user
    if @post.votes.create(user_id: @current_user.id)
      @post.upvote += 1
      @post.save
    end
    flash[:notice] =  "Thank you for upvoting!"
    redirect_to @post

  end
end
