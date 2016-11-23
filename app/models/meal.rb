class Meal < ApplicationRecord
  has_many :orders
  belongs_to :chef, class_name: :User
end
