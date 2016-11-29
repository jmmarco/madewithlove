class CreateJoinTableFavoritedMeal < ActiveRecord::Migration[5.0]
  def change
    create_join_table :users, :meals, table_name: "favorited_meals"
  end
end
