# == Schema Information
#
# Table name: projects
#
#  id          :integer          not null, primary key
#  title       :string
#  description :text
#  spec_urls   :string
#  proj_id     :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  company_id  :integer
#

class ProjectsController < ApplicationController
    
    def index
        @user = current_user
        @projects = Project.all
    end
    
    def show
        @user = current_user
        @project = Project.find(params[:id])
    end
end
