class AddStoreToCuisine < ActiveRecord::Migration
  def change
    add_reference :cuisines, :store, index: true, foreign_key: true
  end
end
