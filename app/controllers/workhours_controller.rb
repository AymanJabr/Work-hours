class WorkhoursController < ApplicationController
  before_action :authenticate_user!

  def index
    @workhour = current_user.assigned_workhours
    @first_icons = @workhour.map(&:first_group_icon)
  end

  def show
    @workhour = Workhour.find(params[:id])
  end

  def index_external
    @workhour = current_user.unassigned_workhours
  end

  def new
    @workhour = current_user.workhours.new
  end

  def create
    @workhour = current_user.workhours.new(workhour_params)
    if @workhour.save
      redirect_to workhours_path
    else
      # p "\n\nFAILED\n\n"
      render :new
    end
  end

  private

  def workhour_params
    # params.require(:workhour).permit(:name, :amount)
    params.require(:workhour).permit(:name, :amount, group_ids:[])
  end
end
