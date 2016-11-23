class Order < ApplicationRecord
  belongs_to :users, foreign_key: 'patron_id'
  belongs_to :meals

  validates :quantity, :total_price, :destination_address, :delivery_time, presence: true
end
