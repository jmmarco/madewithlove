class Order < ApplicationRecord
  belongs_to :user, foreign_key: :patron_id, class_name: 'User'
  belongs_to :meal, foreign_key: :meal_id, class_name: 'Meal'
  has_one :review

  validates :quantity, :total_price, :destination_address, :delivery_time, presence: true

  validate :delivery_time_cant_be_in_the_past, :delivery_time_must_be_at_least_a_day_in_advance, :delivery_time_must_be_no_more_than_four_weeks_in_advance

  def delivery_time_cant_be_in_the_past
    errors.add(:delivery_time, "can't be in the past") if
      !delivery_time.blank? and delivery_time < DateTime.now
  end

  def delivery_time_must_be_at_least_a_day_in_advance
    errors.add(:delivery_time, "must be at least a day in advance") if
      !delivery_time.blank? and DateTime.now > delivery_time - 1.days
  end

  def delivery_time_must_be_no_more_than_four_weeks_in_advance
    errors.add(:delivery_time, "must be no more than four weeks in advance") if !delivery_time.blank? and DateTime.now < delivery_time - 28.days
  end
end
