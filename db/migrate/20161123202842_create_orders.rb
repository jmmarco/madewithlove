class CreateOrders < ActiveRecord::Migration[5.0]
  def change
    create_table :orders do |t|
      t.integer :patron_id
      t.integer :meal_id
      t.integer :quantity
      t.double :total_price
      t.varchar :destination_address
      t.datetime :delivery_time

      t.timestamps
    end
  end
end
