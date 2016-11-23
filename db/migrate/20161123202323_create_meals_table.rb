class CreateMealsTable < ActiveRecord::Migration[5.0]
  def change
    create_table :meals do |t|
      t.string :name
      t.text :description
      t.string :cuisine
      t.integer :chef_id
      t.decimal :price
      t.timestamps
    end
  end
end
