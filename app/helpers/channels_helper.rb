
#
# [module description]
#
# @author [himil]
#
module ChannelsHelper

    #
    # [save_channel_id description]
    # @param channel [type] [description]
    #
    # @return [type] [description]
  def save_channel_id(channel)
    session[:channel_id] = channel.id
  end
end
