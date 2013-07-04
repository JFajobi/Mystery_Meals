class MenuItemsController < ApplicationController

  def new
    @restaurant = Restaurant.find(params[:restaurant_id])
    @menu_item = MenuItem.new  # or @restaurant.menu_item.build()
  end

  def create
    @menu_item = MenuItem.new(params[:menu_item])
    @restaurant = Restaurant.find(params[:restaurant_id])
    @menu_item.restaurant = @restaurant
    
    if @menu_item.save
      redirect_to root_path, notice: 'Menu Item Was Created!!!'
    else
      render action: "new"
    end
  end

  def index
    @restaurant = current_user.meal_offer_searches.last.restaurant.name
  end

end