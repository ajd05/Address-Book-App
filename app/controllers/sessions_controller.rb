class SessionsController < ApplicationController
  def create
    user = User.from_omniauth(request.env["omniauth.auth"])
    session[:user_id] = user.id
    redirect_to contacts_home_url(user.id)
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_path
  end
end
