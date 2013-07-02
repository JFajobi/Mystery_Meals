class AddRestaurantOfferIdToRestaurant < ActiveRecord::Migration
  def up
    add_column :restaurants, :restaurant_offer_id, :integer
  end
  def down
    remove_column :restaurants, :restaurant_offer_id
  end
end
