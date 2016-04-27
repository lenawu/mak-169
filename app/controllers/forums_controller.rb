class ForumsController < ApplicationController
    def index
        if company_signed_in?
            @projects = current_company.projects
            @forums = []
            @projects.each do |project| 
                if project.forum
                    @forums << project.forum
                end
            end
        else
            @forums = Forum.All
        end
    end
    
    def show
        @project = Forum.find(params[:id])
    end
    
    def new
    
    end
    
end
