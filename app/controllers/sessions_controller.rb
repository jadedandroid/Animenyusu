class SessionsController < ApplicationController
  
  
    def new 

    end
  
    def create 
      @user = User.find_by(name: params[:session][:name])
  
      if @user && @user.authenticate(params[:session][:password])
        session[:user_id] = @user.id 
        redirect_to user_path
      else 
        flash[:error] = "username or password is incorrect"
        redirect_to new_login_path
      end
  
    end 
  
  
    def logout 
      # session[:user_id] = nil
      session.clear
  
      redirect_to login_path
    end 
  end