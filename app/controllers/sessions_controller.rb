class SessionsController < ApplicationController
  def new
  end

  def create
  	user = user.find_by(username: params[:username])
  	if user && user.authenticate(params[:password])
  		redirect_to users_path
  	else
  		flash[:error] = "Incorrect Username/Password Combination"
  		redirect_to login_path
  	end
  end

  def destroy
  	session[:user_id] = nil
  	redirect_to login_path
  end

end