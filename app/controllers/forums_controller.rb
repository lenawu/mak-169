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
        elsif user_signed_in?
            @projects = current_user.projects
            @forums = []
            @projects.each do |project| 
                if project.forum
                    @forums << project.forum
                end
            end
        else
            @projects = []
        end
    end
    
    def show
        @forum = Forum.find(params[:id])
        @messages = @forum.messages.all
    end
    
    def new
    
    end
    
end
