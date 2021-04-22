class WorkhoursController < ApplicationController
  before_action :authenticate_user!

  def index
    # To be changed
    @workhour = Workhour.all
  end

  def show
    @workhour = Workhour.find(params[:id])
  end

  def index_external
    # To be changed
    @workhour = Workhour.all
  end

  #   def edit
  #     @workhour = current_user.workhours.find(params[:id])
  #   end

  def new
    @workhour = current_user.workhours.new
  end

  def create
    @workhour = current_user.workhours.new(workhour_params)
    if @workhour.save
      redirect_to workhours_path
    else
      render :new
    end
  end

  private

  def workhour_params
    params.require(:workhour).permit(:name, :amount)
  end
end
