class ChangeMealOfferSearchColumnConstraints < ActiveRecord::Migration
  def up
  	change_column :meal_offer_searches, :cuisine, :string, null: false
  	change_column :meal_offer_searches, :neighborhood, :string, null: false
  end

  def down
  	change_column :meal_offer_searches, :cuisine, :string
  	change_column :meal_offer_searches, :neighborhood, :string
  end
end
