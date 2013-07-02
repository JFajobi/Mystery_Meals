class AddNullContraints < ActiveRecord::Migration
  def up
    remove_column :restaurant_offers, :meal_offer_search_id
    add_column :restaurant_offers, :meal_offer_search_id, :integer, :null => false
  end

  def down
    remove_column :restaurant_offers, :meal_offer_search_id
    add_column :restaurant_offers, :meal_offer_search_id, :string
  end
end
