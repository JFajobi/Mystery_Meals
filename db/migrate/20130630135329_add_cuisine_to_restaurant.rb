class AddCuisineToRestaurant < ActiveRecord::Migration
  def up
    add_column :restaurants, :cuisine, :string, :null => false
    change_column :menu_items, :restaurant_id, :integer, :null => false
  end

  def down
    remove_column :restaurants, :cuisine
    change_column :menu_items, :restaurant_id, :integer
  end
end
