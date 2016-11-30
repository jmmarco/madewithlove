class AddPkIdToFavoritedMeals < ActiveRecord::Migration[5.0]
  def self.up
    add_column :favorited_meals, :id, :primary_key
  end

  def self.down
    remove_column :favorited_meals, :id
  end
end
