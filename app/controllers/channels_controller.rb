
#
# [class description]
#
# @author [himil]
#
class ChannelsController < ApplicationController

    #
    # [new description]
    #
    # @return [type] [description]
  def new
    @channel = Channel.new
  end

  #
  # [create description]
  #
  # @return [type] [description]
  def create
    @channel = Channel.create(params[:channel])
    redirect_to @current_user
  end

  #
  # [show description]
  #
  # @return [type] [description]
  def show
    @post = Post.new
    @channel = Channel.find_by_id(params[:id])
    @posts = @channel.posts
    @user_posts = Channel.get_user_posts(@current_user,@channel)
    save_channel_id(@channel)
  end
end
