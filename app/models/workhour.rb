class Workhour < ApplicationRecord
  belongs_to :user

  has_many :group_workhours
  has_many :groups, through: :group_workhours
end
