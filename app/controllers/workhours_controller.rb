class WorkhoursController < ApplicationController
  before_action :authenticate_user!

  def index
    @workhour = current_user.assigned_workhours
    @workhour = @workhour.map { |workhour| workhour if workhour.user.id == current_user.id }.compact
    @first_icons = @workhour.map(&:first_group_icon)
  end

  def show
    @workhour = Workhour.find(params[:id])
  end

  def index_external
    @workhour = current_user.unassigned_workhours
    @workhour.map { |workhour| p "Same user as current: #{workhour.user.id == current_user.id}" }
    @workhour = @workhour.map { |workhour| workhour if workhour.user.id == current_user.id }.compact
  end

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

  def edit
    @workhour = Workhour.find(params[:id])
    session[:return_to] ||= request.referer
  end

  def update
    @workhour = Workhour.find(params[:id])
    @workhour.update(workhour_params)
    if @workhour.save
      redirect_to session.delete(:return_to), notice: 'Workhours succesfully updated'
    else
      render :edit, notice: 'Update Workhours failed'
    end
  end

  private

  def workhour_params
    params.require(:workhour).permit(:name, :amount, group_ids: [])
  end
end
