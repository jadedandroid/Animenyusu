class ApplicationController < ActionController::Base
        # helper_method allows you to call the method on the views
        before_action :set_current_user
        before_action :authorized
      
        def set_current_user
            # INSTANCE VARIABLES IN A BEFORE ACTION IS AVAILABLE
            @current_user = User.find_by(id: session[:user_id])
        end
    
        def check_and_see_if_someone_is_logged_in?
            !set_current_user.nil?
        end
    
        def authorized_to_see_page
            redirect_to login_path unless check_and_see_if_someone_is_logged_in?
        end
    
end
