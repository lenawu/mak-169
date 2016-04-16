class ProjectsController < ApplicationController
    def index
        @projects = Project.all
    end
    
    def create
        if params.has_key?(:project)
            @project = Project.create!(project_params)
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
    
#       def create
#     @movie = Movie.create!(movie_params)
#     flash[:notice] = "#{@movie.title} was successfully created."
#     redirect_to movies_path
#   end

    def show
        @project = Project.find(params[:id])
    end
end