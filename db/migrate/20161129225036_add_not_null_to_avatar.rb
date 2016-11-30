class AddNotNullToAvatar < ActiveRecord::Migration[5.0]
  def up
    User.all.each{|x| x.avatar = 'avatar.png'; x.save}
    change_column_null(:users, :avatar, false)
  end

  def down
    change_column_null(:users, :avatar, true)
  end
end
