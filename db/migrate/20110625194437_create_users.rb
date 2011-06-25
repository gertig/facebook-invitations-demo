class CreateUsers < ActiveRecord::Migration
  def self.up
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.integer :number_of_friends, :default => 0
      t.integer :fb_uid
      t.string :fb_token

      t.timestamps
    end
  end

  def self.down
    drop_table :users
  end
end
