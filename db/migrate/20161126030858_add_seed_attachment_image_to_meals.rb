class AddSeedAttachmentImageToMeals < ActiveRecord::Migration[5.0]
  def change
    add_column :meals, :seed_image, :string
  end
end
