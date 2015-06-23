class CommentsController < ApplicationController
  def new
  end

  def create
    @comment = Comment.create(params[:comment])
    @post = Post.find(session[:post_id])
    @post.comments << @comment
    redirect_to @post
  end
end
