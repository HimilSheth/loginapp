
#
# [class description]
#
# @author [himil]
#
class CommentsController < ApplicationController

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
    @comment = Comment.new(params[:comment])
    @post = Post.find(session[:post_id])
    Comment.create_associations(@post,@comment)
    redirect_to @post
  end
end
