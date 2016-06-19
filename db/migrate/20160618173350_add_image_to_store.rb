class AddImageToStore < ActiveRecord::Migration
  def change
    add_column :stores, :image, :string
    add_column :cuisines, :image, :string
    add_column :users, :image, :string
  end
end
