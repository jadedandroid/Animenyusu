class ApplicationController < ActionController::Base
        # helper_method allows you to call the method on the views
        before_action :set_current_user
        before_action :authorized
      
        def set_current_user
          # @current_user = User.find(session[:user_id])
          @current_user = User.find_by(id: session[:user_id])
        end 
      
        def authorized
          redirect_to new_login_path unless set_current_user 
        end 
            
    
end
