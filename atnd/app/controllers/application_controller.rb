class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  private
  def current_user
  	#binding.pry
    begin
       #@current_user ||= User.find(@user["uid"]) if params[:uid]
      #@current_user ||= User.find(params[:id]) if params[:id]
      @current_user ||= User.find(session[:user_id]) if session[:user_id]
      #binding.pry
    rescue
      session[:user_id] = nil
      redirect_to "/events"
    end
    #@current_user
    
  end

  helper_method :current_user
end
