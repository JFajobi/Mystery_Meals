class CreateMealOfferSearches < ActiveRecord::Migration
  def change
    create_table :meal_offer_searches do |t|
      t.string :neighborhood
      t.integer :price_anchor, :null => false
      t.string :cuisine
      t.integer :user_id

      t.timestamps
    end
  end
end
