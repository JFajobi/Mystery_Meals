class AddRestaurantIdToMealOffer < ActiveRecord::Migration
  def up
    add_column :meal_offer_searches, :restaurant_id, :integer
  end
  def down
    remove_column :meal_offer_searches, :restaurant_id
  end
end
