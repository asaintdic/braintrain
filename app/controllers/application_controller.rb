class ApplicationController < ActionController::Base

    helper_method :current_user, :logged_in?


    private

        def logged_in?
         !!current_user
        end
      
        def current_user
         
 
        User.find_by(id: session[:user_id])
#
        end
        
        # def redirect_if_logged_out
        #     unless logged_in?
        #       redirect_to root_path, notice: "You must be logged in to do that"
        #     end
        #   end
    
   
end
