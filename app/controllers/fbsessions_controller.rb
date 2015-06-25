class FbsessionsController < ApplicationController
  def new
  end

  def create
    @user = User.authenticate_through_facebook(env["omniauth.auth"])
    login_and_redirect(@user)
  end
end
