class ChangeRestaurantColumnName < ActiveRecord::Migration
  def up
    rename_column :restaurants, :image, :restaurant_image
  end

  def down
    rename_column :restaurants, :restaurant_image, :image
  end
end
