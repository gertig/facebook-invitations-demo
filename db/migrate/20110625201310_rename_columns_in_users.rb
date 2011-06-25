class RenameColumnsInUsers < ActiveRecord::Migration
  def self.up
    rename_column(:users, :fb_uid, :fb_uid)
    rename_column(:users, :fb_token, :fb_token)
  end

  def self.down
  end
end
