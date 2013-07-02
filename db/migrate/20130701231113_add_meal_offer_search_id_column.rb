class AddMealOfferSearchIdColumn < ActiveRecord::Migration
  def up
    add_column :meal_offer_searches, :restaurant_offer_id, :integer
    remove_column :restaurant_offers, :meal_offer_search_id
  end

  def down
    remove_column :meal_offer_searches, :restaurant_offer_id
    add_column :restaurant_offers, :meal_offer_search_id, :integer
  end
end
