class AddManagerToStore < ActiveRecord::Migration
  def change
    add_column :stores, :manager, :string
  end
end
