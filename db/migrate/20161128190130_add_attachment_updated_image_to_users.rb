class AddAttachmentUpdatedImageToUsers < ActiveRecord::Migration
  def self.up
    change_table :users do |t|
      t.attachment :updated_image
    end
  end

  def self.down
    remove_attachment :users, :updated_image
  end
end
