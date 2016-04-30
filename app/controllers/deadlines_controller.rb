class DeadlinesController < ApplicationController
 
  def index
    @user = current_user
    @deadlines = Deadline.all
  end

  def create
    if params.has_key?(:deadline)
      @deadline = Deadline.create!(deadline_params)
      @user = current_user
      @user.deadlines << @deadline
      flash[:notice] = "Deadline was successfully created."
      redirect_to deadlines_path
    end
  end
  
  def edit
    @deadline = Deadline.find(params[:id])
  end
  
  def update
    @user = current_user
    @deadline = @user.deadlines.find(params[:id])
    if @deadline.update_attributes(deadline_params)
      @deadline.update(deadline_params)
      flash[:notice] = "Deadlines updated"
      @deadline.save
      redirect_to deadline_path(@deadline)
      #@deadline.save
    #else
      #render "edit"
      #flash[:notice] = "Deadline edit failed"
    end
  end

  private
    # Never trust parameters from the scary internet, only allow the white list through.
    def deadline_params
      params.require(:deadline).permit(:deadline_title, :start_date, :end_date, :explanation, :status)
    end
end
