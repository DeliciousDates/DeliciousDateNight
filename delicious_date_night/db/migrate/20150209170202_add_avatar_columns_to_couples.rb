class AddAvatarColumnsToCouples < ActiveRecord::Migration
  def self.up
    add_attachment :couples, :avatar
  end

  def self.down
    remove_attachment :couples, :avatar
  end
end