class AddForeignKeyToMenu < ActiveRecord::Migration
  def change
    add_column :menus, :restaurant_id, :integer
  end
end
