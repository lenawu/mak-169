# == Schema Information
#
# Table name: users
#
#  id                     :integer          not null, primary key
#  email                  :string           default(""), not null
#  encrypted_password     :string           default(""), not null
#  reset_password_token   :string
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#  sign_in_count          :integer          default(0), not null
#  current_sign_in_at     :datetime
#  last_sign_in_at        :datetime
#  current_sign_in_ip     :string
#  last_sign_in_ip        :string
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#  admin                  :boolean          default(FALSE)
#

class UsersController < ApplicationController
    
    def index
        @users = User.all
    end
    
    #For calendar functionality
    #def calendar_view
        #@events = Event.all
    #end
    
    #For dashboard functionality
    # def show
    #     @user = User.find(params[:id])
    
    #     respond_to do |format|
    #          format.html
    #          format.xml { render :xml => @user }
    # end
end
