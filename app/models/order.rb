class Order < ApplicationRecord
  belongs_to :user, foreign_key: :patron_id, class_name: 'User'
  belongs_to :meal, foreign_key: :meal_id, class_name: 'Meal'

  validates :quantity, :total_price, :destination_address, :delivery_time, presence: true

  validate :delivery_time_cant_be_in_the_past

  def delivery_time_cant_be_in_the_past
    errors.add(:delivery_time, "can't be in the past") if
      !delivery_time.blank? and delivery_time < Time.now
  end
end
