class AddDefaultAvatarOnUsers < ActiveRecord::Migration[5.0]

  def change
    change_column_default(:users, :avatar, 'avatar.png')
  end
end
