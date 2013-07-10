class MealOfferSearch < ActiveRecord::Base
  attr_accessible :cuisine, :neighborhood, :price_anchor, :user_id, :restaurant, :selected_meal_id
  validates_presence_of :price_anchor, :user_id, :restaurant



  CUISINE = ['Fine Dining', 'American', 'Seafood']

  NEIGHBORHOOD = ['Jamaica Plain','Cambridge']
  belongs_to :user
  belongs_to :restaurant

  def selected_meal
    MenuItem.find(selected_meal_id)
  end
end
