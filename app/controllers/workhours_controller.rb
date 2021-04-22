class WorkhoursController < ApplicationController
  before_action :authenticate_user!

  def index
    @workhour = Workhour.new
    # timeline_posts
  end

  def create
    @workhour = current_user.workhours.new(workhour_params)

    if @workhour.save
    #   redirect_to posts_path, notice: 'Post was successfully created.'
    else
    #   timeline_posts
    #   render :index, alert: 'Post was not created.'
    end
  end

  private

#   def timeline_posts
#     @timeline_posts ||= Post.where(user: current_user.friends + [current_user.id]).ordered_by_most_recent
#   end

  def workhour_params
    params.require(:workhour).permit(:name, :amount)
  end
end