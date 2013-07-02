class MealOfferSearchesController < ApplicationController

  def new
    @meal_offer_search = current_user.meal_offer_searches.build
  end
  
  def create
    @meal_offer_search = current_user.meal_offer_searches.new(params[:meal_offer_search])
    if @meal_offer_search.save
      redirect_to restaurant_offers_path

    else
      render action: "new"
    end
  end

end
