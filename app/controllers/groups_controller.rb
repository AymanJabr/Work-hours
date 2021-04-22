class GroupsController < ApplicationController
  before_action :authenticate_user!

  def index
    @group = Group.all
  end

  def show
    @group = Group.find(params[:id])
  end

  def new
    @group = current_user.groups.new
  end

  def create
    @group = current_user.groups.new(group_params)
    if @group.save
      redirect_to @group, notice: 'Group succesfully created'
    else
      render :new
    end
  end

  private

  def group_params
    params.require(:group).permit(:name, :icon)
  end
end
