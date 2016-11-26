class AddChefAvatar < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :chef_avatar, :string
  end
end
