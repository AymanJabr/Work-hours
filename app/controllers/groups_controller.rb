class GroupsController < ApplicationController
  before_action :authenticate_user!

  def index
    @groups = Group.all
  end

  def show
    @group = Group.find(params[:id])
  end

  def create
    @group = current_user.groups.new(group_params)

    if @group.save
    #   redirect_to posts_path, notice: 'Post was successfully created.'
    else
    #   timeline_posts
    #   render :index, alert: 'Post was not created.'
    end
  end

  private

  def group_params
    params.require(:group).permit(:name, :icon)
  end

end