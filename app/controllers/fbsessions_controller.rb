
#
# [class description]
#
# @author [himil]
#
class FbsessionsController < ApplicationController

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
    @user = User.authenticate_through_facebook(env["omniauth.auth"])
    login_and_redirect(@user)
  end
end
