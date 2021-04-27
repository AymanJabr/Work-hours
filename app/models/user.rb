class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :groups, dependent: :destroy
  has_many :workhours, dependent: :destroy

  def assigned_workhours
    all_workhours = current_user.workhours.in_order
    all_workhours.map { |workhour| workhour if workhour.groups.any? }.compact
  end

  def unassigned_workhours
    all_workhours = current_user.workhours.in_order
    all_workhours.map { |workhour| workhour unless workhour.groups.any? }.compact
  end
end
