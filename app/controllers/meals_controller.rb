class MealsController < ApplicationController
#:menu_item_id, :restaurant_id, :user_id
  def create
    @meal = Meal.new
    @user = current_user.id
    @restaurant = current_user.meal_offer_searches.last.restaurant_id
    @item1_id = Restaurant.where(id: @restaurant).menu_items.first
    @item2_id = Restaurant.where(id: @restaurant).menu_items.last
    @meal.restaurant_id = @restaurant
    @meal.user_id = current_user
    @meal.menu_item_id = params[:menu_item_id]


    if @meal.save
       redirect_to root_path  # redirect_to restaurant_menu_item_path(current_user.meal_offer_searches.last.restaurant, ????)
    else
      render action: "new"
    end
  end
end