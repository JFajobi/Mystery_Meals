require 'spec_helper'

describe RestaurantOffer do
  it {should have_many(:meal_offer_searches) }
end
