class User < ApplicationRecord
  # Associations
  has_many :prepared_meals, class_name: "Meal", foreign_key: :chef_id
  has_many :orders, foreign_key: :patron_id
  has_many :purchased_meals, through: :orders, source: :meals
  has_many :sales, through: :prepared_meals, source: :orders
  has_many :supported_chef, through: :purchased_meals, source: :chef
  # has_attached_file :chef_avatar

  # Validations
  validates :first_name, :last_name, :email, presence: true
  validates :email, uniqueness: true

  has_attached_file :updated_image, styles: { large: "600x600", medium: "300x300>", thumb: "150x150#" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :updated_image, content_type: /\Aimage\/.*\z/

  geocoded_by :street_address
  after_validation :geocode
end
