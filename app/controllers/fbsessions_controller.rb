class FbsessionsController < ApplicationController
  def new
  end

  def create
    auth = env["omniauth.auth"]
    user = User.find_by_email(auth.info.email) || User.from_omniauth(env["omniauth.auth"])
    log_in user
    redirect_to user
  end

end
