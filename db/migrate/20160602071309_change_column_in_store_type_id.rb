class ChangeColumnInStoreTypeId < ActiveRecord::Migration
  def change
  	change_column :stores, :store_type_id, :integer
  end
end
