class Group < ApplicationRecord
  belongs_to :user

  has_many :group_workhours
  has_many :workhours, through: :group_workhours

  validates :name, presence: true
  validates :icon, presence: true

  scope :in_order, -> { order(created_at: :desc) }
  scope :in_alphabetical_order, -> { order(name: :asc)}
end
