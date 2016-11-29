class CreateReviews < ActiveRecord::Migration[5.0]
  def change
    create_table :reviews do |t|
      t.text :comment
      t.integer :rating
      t.integer :order_id
      t.timestamps
    end
  end
end
