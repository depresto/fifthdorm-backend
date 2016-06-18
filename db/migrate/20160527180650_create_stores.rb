class CreateStores < ActiveRecord::Migration
  def change
    create_table :stores do |t|
      t.text :name, 			null: false
      t.string :phone,			null: false
      t.text :address,			null: false
      t.integer :store_type_id, null: false

      t.timestamps null: false
    end
  end
end
