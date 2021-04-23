class GroupsController < ApplicationController
  before_action :authenticate_user!
  require 'date'

  def index
    @group = Group.all.in_alphabetical_order
  end

  def monthly_report
    @groups = Group.all.where(created_at: Time.now.beginning_of_month..Time.now.end_of_month).map { |group| group if group.workhours.any? }.compact
  end

  def show
    @group = Group.find(params[:id])
  end

  def new
    @group = current_user.groups.new
  end

  def edit
    @group = Group.find(params[:id])
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
