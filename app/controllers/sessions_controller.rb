class SessionsController < ApplicationController
  
  
  def create
    auth =  request.env["omniauth.auth"]
    user = User.find_by_fb_uid_and_fb_token(auth["uid"], auth["credentials"]["token"]) || User.create_with_omniauth(auth)
    session[:user_id] = user.id

    redirect_to root_url, :notice => "Signed In"
  end
  
  def destroy
    session[:user_id] = nil
    
    redirect_to root_url, :notice => "Signed Out"
  end
  
end
