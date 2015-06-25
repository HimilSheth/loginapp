class CommentsController < ApplicationController
  def new
  end

  def create
    @comment = Comment.new(params[:comment])
    @post = Post.find(session[:post_id])
    Comment.create_associations(@post,@comment)
    redirect_to @post
  end
end
