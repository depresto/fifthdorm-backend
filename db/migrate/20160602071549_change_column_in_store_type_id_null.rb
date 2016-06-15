class ChangeColumnInStoreTypeIdNull < ActiveRecord::Migration
  def change
  	change_column :stores, :store_type_id, :integer, :null => true
  end
end
