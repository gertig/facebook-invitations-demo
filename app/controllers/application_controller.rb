class ApplicationController < ActionController::Base
  protect_from_forgery
  helper_method :current_user #Makes it available to the views
  
  private
  
  def current_user
    @current_user ||=  User.find(session[:user_id]) if session[:user_id]  
  end
end
