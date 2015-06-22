class CreateChannelsUsersTable < ActiveRecord::Migration
  def self.up
    create_table :channels_users, :id => false do |t|
        t.references :channel
        t.references :user
    end
    add_index :channels_users, [:channel_id, :user_id]
    add_index :channels_users, :user_id
  end

  def self.down
    drop_table :channels_users
  end
end
