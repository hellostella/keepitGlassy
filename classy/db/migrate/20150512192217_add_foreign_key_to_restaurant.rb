class AddForeignKeyToRestaurant < ActiveRecord::Migration
  def change
    add_column :restaurants, :location_id, :integer
  end
end
