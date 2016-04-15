class Admin::ProjectsController < AdminController
  
  def index
    @projects = Project.all
  end
end
