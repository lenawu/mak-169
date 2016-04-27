# == Schema Information
#
# Table name: projects
#
#  id          :integer          not null, primary key
#  title       :string
#  description :text
#  spec_urls   :string
#  proj_id     :integer
#  students    :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  company_id  :integer
#  approved    :boolean          default(FALSE)
#

class ProjectsController < ApplicationController
    
    def index
        @user = current_user
        @projects = Project.all
    end
    
    def create
        if params.has_key?(:project)
            @project = Project.create!(project_params)
            @company = current_company
            @company.projects << @project
            flash[:notice] = "#{@project.title} was successfully created."
            redirect_to projects_path
        end
    end
    
    def project_params
       params.require(:project).permit(:title, :description, :spec_urls, :proj_id, :students) 
    end
    
#       def movie_params
#     params.require(:movie).permit(:title, :rating, :director, :description, :release_date)
#   end

    def show
        @user = current_user
        @project = Project.find(params[:id])
    end
    
    def approve
        @project = Project.find(params[:id])
        @project.update_attribute(:approved, true)
        redirect_to projects_path
    end
end
