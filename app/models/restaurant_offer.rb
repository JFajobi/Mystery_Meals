class RestaurantOffer < ActiveRecord::Base
  attr_accessible :offer_restaurant_name
  has_many :meal_offer_searches

  
end
