module ChannelsHelper
  def save_channel(channel)
    session[:channel_id] = channel.id
  end
end
