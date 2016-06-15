class AddOrderToOrderDetail < ActiveRecord::Migration
  def change
  	remove_column :cuisines,		:store_id
  	remove_column :order_details,	:order_id
  	remove_column :order_details,	:cuisine_id
  	remove_column :orders,			:user_id

    add_reference :order_details, :order, 	index: true, foreign_key: true
    add_reference :order_details, :cuisine, index: true, foreign_key: true
  end
end
