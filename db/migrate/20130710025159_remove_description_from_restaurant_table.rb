class RemoveDescriptionFromRestaurantTable < ActiveRecord::Migration
  def up
    remove_column :restaurants, :description
  end

  def down
    add_column :restaurants, :description, :text
  end
end
