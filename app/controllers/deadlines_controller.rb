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

  private
    # Never trust parameters from the scary internet, only allow the white list through.
    def deadline_params
      params.require(:deadline).permit(:deadline_title, :start_date, :end_date, :explanation, :status)
    end
end
