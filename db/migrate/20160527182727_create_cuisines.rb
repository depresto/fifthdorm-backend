class CreateCuisines < ActiveRecord::Migration
  def change
    create_table :cuisines do |t|
      t.text :name,			null: false
      t.float :price,		null: false
      t.integer :store_id,	null: false

      t.timestamps null: false
    end
  end
end
