class RestaurantOffersController < ApplicationController
  def index
    @random_restaurant = Restaurant.price_filter(current_user.meal_offer_searches.last.price_anchor)
    current_user.restaurant_offers.new(:offer_restaurant_name => @random_restaurant)
  end
end