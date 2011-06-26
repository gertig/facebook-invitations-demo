class ChangeColumnTypeUsers < ActiveRecord::Migration
  def self.up
    change_column(:users, :fb_uid, :string)
  end

  def self.down
  end
end
