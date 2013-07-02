class CreateRestaurantOffers < ActiveRecord::Migration
  def change
    create_table :restaurant_offers do |t|
      t.string :offer_restaurant_name
      t.string :meal_offer_search_id

      t.timestamps
    end
  end
end
