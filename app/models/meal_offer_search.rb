class MealOfferSearch < ActiveRecord::Base
  attr_accessible :cuisine, :neighborhood, :price_anchor, :user_id
  validates_presence_of :price_anchor
end
