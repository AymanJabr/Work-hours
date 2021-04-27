class Group < ApplicationRecord
  belongs_to :user

  has_many :group_workhours
  has_many :workhours, through: :group_workhours

  validates :name, presence: true, minimum: 5, allow_blank: true
  validates :icon, presence: true, format: URI::regexp(%w[http https])

  scope :in_order, -> { order(created_at: :desc) }
  scope :in_alphabetical_order, -> { order(name: :asc) }
end
