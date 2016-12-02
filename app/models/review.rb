class Review < ApplicationRecord
  belongs_to :order
  has_one :meal, through: :orders
  has_one :user, through: :orders

  validates :order_id, presence: true

end
