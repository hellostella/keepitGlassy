class AddDrinkNameToMenu < ActiveRecord::Migration
  def change
    add_column :menus, :drink_name, :string
  end
end
