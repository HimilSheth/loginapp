module ChannelsHelper
  def save_channel_id(channel)
    session[:channel_id] = channel.id
  end
end
