class AdminController < ApplicationController
   before_action :require_admin
   
   def require_admin
       unless current_user.try(:admin?)
           flash[:error] = "You are not authorized"
           redirect_to root_path
       end
   end
end
