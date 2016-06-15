class CreateOrderDetails < ActiveRecord::Migration
  def change
    create_table :order_details do |t|
    	t.integer	"order_id",		null: false
    	t.integer	"cuisine_id",	null: false
    	t.integer "quantity",		null: false

      t.timestamps null: false
    end
  end
end
