class ApplicationController < ActionController::Base
    helper_method :logged_in?, :current_user, :authorized


    def logged_in?
        !!session[:user_id]
    end
      
        def current_user
            if logged_in?
          # @current_user = User.find(session[:user_id])
                @current_user = User.find_by(id: session[:user_id])
                byebug
                @current_user
            else
                nil
            end
        end 
      
        def authorized
          redirect_to new_login_path unless logged_in?
        end 
            
    
end

