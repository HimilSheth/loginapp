
#
# [class description]
#
# @author [himil]
#
class PostsController < ApplicationController


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
    @post = Post.new(params[:post])
    @channel = Channel.find(session[:channel_id])
    Post.create_associations(@current_user,@post,@channel)
    redirect_to @channel
  end

  #
  # [show description]
  #
  # @return [type] [description]
  def show
    @comment = Comment.new
    @post = Post.find(params[:id])
    @comments = @post.comments
    @channel = Channel.find(session[:channel_id])
    save_post_id(@post)
  end

  #
  # [update description]
  #
  # @return [type] [description]
  def update
    @post = Post.find(session[:post_id])
    Post.upvote_post_by_one(@post,@current_user)
    redirect_to @post
  end
end
