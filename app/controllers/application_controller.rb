class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
  #Check if there is a visitor or a user
  #before_action :need_user, only: [:new, :create]
  
  #private
  #def need_user
    #if current_user.nil?
      #flash[:error] = "Please log in first before proceeding further"
      #redirect_to new_user_session_path
    #end
  #end
  def after_sign_in_path_for(resource)
    info_dashboard_path
  end
end
