class SessionsController < ApplicationController
  def create
    user = User.from_omniauth(env["omniauth.auth"])
    session[:user_id] = user.id
    #redirect_to :action => "show", :id => user.id
    redirect_to root_url
  end

  def show
  	#@token = User.find_by_id(params[:id])
  end
  def destroy
    session[:user_id] = nil
    redirect_to root_path
  end
end
