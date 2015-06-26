
#
# [class description]
#
# @author [himil]
#
class ApplicationController < ActionController::Base
  before_filter :current_user , :except => :log_in
  protect_from_forgery
  include SessionsHelper
  include ChannelsHelper
  include PostsHelper
end
