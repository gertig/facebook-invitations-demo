class RenameColumnsInUsers < ActiveRecord::Migration
  def self.up
    rename_column(:users, :fb_id, :fb_uid)
    rename_column(:users, :fb_access_token, :fb_token)
  end

  def self.down
  end
end
