class Meal < ApplicationRecord
  has_many :orders
  belongs_to :chef, class_name: :User

  validates :name, :description, :cuisine, :chef_id, :price, presence: true
end
