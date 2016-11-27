class Order < ApplicationRecord
  belongs_to :user, foreign_key: :patron_id, class_name: 'User'
  belongs_to :meal, foreign_key: :meal_id, class_name: 'Meal'

  validates :quantity, :total_price, :destination_address, :delivery_time, presence: true

  # validates :delivery_time_must_be_one_day_in_advance
end
