class RemoveFbIdFromUser < ActiveRecord::Migration
  def change
  	remove_column :users, :fb_id
  	remove_column :users, :token
  	remove_column :users, :user
  end
end
