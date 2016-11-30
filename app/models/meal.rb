class Meal < ApplicationRecord
  has_many :orders
  has_many :favorited_meals
  belongs_to :chef, class_name: :User
  has_many :reviews, through: :orders

  validates :name, :description, :cuisine, :chef_id, :price, presence: true

  has_attached_file :image, styles: { large: "600x600", medium: "300x300>", thumb: "150x150#" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/

  scope :recent, -> { order("Meals.updated_at DESC") }

  # has_attached_file :seed_image

  accepts_nested_attributes_for :orders

  def self.search(term)
    results = []
    if term
      results << where('lower(name) LIKE ?', "%#{term.downcase}%").order('id DESC')
    else
      results << order('id DESC')
    end

    results.flatten
  end




end
