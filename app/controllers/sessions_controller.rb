class SessionsController < ApplicationController
  
  # def create
  #   session[:user_id] = user.id
  #   redirect_to root_url
  # end

  # def destroy
  #   session[:user_id] = nil
  #   redirect_to root_url
  # end
  
  # def new
  #   @user = User.new
  # end
  
  # def create
  #   user = User.find_by(email: params[:session][:email])
  #   if user && user.authenticate(params[:session][:password])
  #     log_in user
  #     redirect_to posts_path
  #   else
  #     flash.now[:danger] = 'Invalid email/password combination'
  #     render 'new'
  #   end
  # end

  # def destroy
  #   log_out
  #   redirect_to root_url
  # end
  
end