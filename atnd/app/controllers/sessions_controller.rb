class SessionsController < ApplicationController
  def new
  end

  def create
  	auth = env['omniauth.auth']
    @user = User.oauth(auth)
    session[:user_id] = @user.id
    #redirect_to :controller => 'events', :action => 'index', :id => session[:user_id]
    redirect_to "/events?id=#{session[:user_id]}"
    #binding.pry
  end

  def destroy
  	session[:user_id] = nil
  	redirect_to "/events"
  end
end
# Hyper   Text Transfer Protocol