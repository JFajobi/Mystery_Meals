require 'spec_helper'

describe MealOfferSearch do
  it {should validate_presence_of(:price_anchor) }
  it {should validate_presence_of(:user_id) }
  it {should belong_to(:user) }
end
