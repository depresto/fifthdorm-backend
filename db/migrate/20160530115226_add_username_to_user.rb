class AddUsernameToUser < ActiveRecord::Migration
  def change
    add_column :users, :user, :text
    add_column :users, :phone, :string
  end
end
