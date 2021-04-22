class Group < ApplicationRecord
  belongs_to :user

  has_many :group_workhours
  has_many :workhours, through: :group_workhours

  validates :name, presence: true
  validates :icon, presence: true
end
