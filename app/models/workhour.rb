class Workhour < ApplicationRecord
  belongs_to :user

  has_many :group_workhours
  has_many :groups, through: :group_workhours

  validates :name, presence: true, length: { minimum: 3 }, allow_blank: true
  validates :amount, presence: true

  scope :in_order, -> { order(created_at: :desc) }

  def first_group_icon
    all_groups = groups
    all_groups.in_order.first.icon
  end
end
