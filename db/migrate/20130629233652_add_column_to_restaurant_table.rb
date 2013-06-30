class AddColumnToRestaurantTable < ActiveRecord::Migration
  def up
    add_column :restaurants, :price_anchor, :integer, :null => false
    add_column :restaurants, :name, :string, :null => false
  end

  def down
    remove_column :restaurants, :price_anchor
    remove_column :restaurants, :name
  end
end
