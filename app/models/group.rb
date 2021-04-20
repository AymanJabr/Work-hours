class Group < ApplicationRecord
  belongs_to :user

  has_many :group_workhours
  has_many :workhours, through: :group_workhours
end
