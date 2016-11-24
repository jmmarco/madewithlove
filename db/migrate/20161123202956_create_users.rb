class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :password
      t.string :oauth_token
      t.string :oauth_secret
      t.string :user_type
      t.string :bio
      t.string :street_address
      t.integer :zip_code

      t.timestamps null: false
    end
  end
end
