class MealOfferSearchesController < ApplicationController

  def new
    @meal_offer_search = current_user.meal_offer_searches.build
  end

  def show
    @meal_offer_search = MealOfferSearch.find(params[:id])
    @offers = @meal_offer_search.restaurant.menu_items.sample(2)

  end

  def update
    @meal_offer_search = MealOfferSearch.find(params[:id])
    @meal_offer_search.update_attributes(params[:meal_offer_search])
    redirect_to meal_offer_search_path(@meal_offer_search)
  end

  def create
    @meal_offer_search = current_user.meal_offer_searches.new(params[:meal_offer_search])
    @restaurant = Restaurant.price_filter(@meal_offer_search.price_anchor)
    @meal_offer_search.restaurant = @restaurant
    if @meal_offer_search.save
      redirect_to meal_offer_search_path(@meal_offer_search)
    else
      render action: "new"
    end
  end

end
