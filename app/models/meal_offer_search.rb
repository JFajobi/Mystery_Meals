class MealOfferSearch < ActiveRecord::Base
  attr_accessible :cuisine, :neighborhood, :price_anchor, :user_id
  validates_presence_of :price_anchor
  CUISINE = ['Italian', 'BBQ', 'Japenese', 'Americannnn']
  NEIGHBORHOOD = ['Back Bay', 'South End', 'North End']
end
