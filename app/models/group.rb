class Group < ApplicationRecord
  belongs_to :user

  has_many :group_workhours
  has_many :workhours, through: :group_workhours

  validates :name, presence: true, length: { minimum: 3 }, allow_blank: true
  validates :icon, presence: true, format: { with: URI::DEFAULT_PARSER.make_regexp(%w[http https]),
    message: "a valid url has to start with http/https" }

    

  scope :in_order, -> { order(created_at: :desc) }
  scope :in_alphabetical_order, -> { order(name: :asc) }
end
