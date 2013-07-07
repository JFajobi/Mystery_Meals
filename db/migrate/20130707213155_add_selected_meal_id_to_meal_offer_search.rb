class AddSelectedMealIdToMealOfferSearch < ActiveRecord::Migration
  def up
    add_column :meal_offer_searches, :selected_meal_id, :integer
  end

  def down
    remove_column :meal_offer_searches, :selected_meal_id
  end
end
