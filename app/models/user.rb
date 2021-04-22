class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :groups
  has_many :workhours, dependent: :destroy

  def assigned_workhours
    all_workhours = Workhour.all.in_order
    all_workhours.map { |workhour| workhour if workhour.groups.any? }.compact
  end

  def unassigned_workhours
    all_workhours = Workhour.all.in_order
    all_workhours.map { |workhour| workhour unless workhour.groups.any? }.compact
  end
end
