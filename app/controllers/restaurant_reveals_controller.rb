class RestaurantRevealsController < ApplicationController
  def index
    @hey = Restaurant.price_filter(current_user.meal_offer_searches.last.price_anchor)
  end
end