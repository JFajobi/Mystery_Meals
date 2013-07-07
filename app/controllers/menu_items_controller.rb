class MenuItemsController < ApplicationController

  def new
    @restaurant = Restaurant.find(params[:restaurant_id])
    @menu_item = MenuItem.new  # or @restaurant.menu_item.build()
  end
  
  def show
  end

  def create
    @menu_item = MenuItem.new(params[:menu_item])
    @restaurant = Restaurant.find(params[:restaurant_id])
    @menu_item.restaurant = @restaurant
    
    if @menu_item.save
      redirect_to root_path
    else
      render action: "new"
    end
  end

  def update
    @menu_item = MenuItem.find(params[:id])

    if @menu_item.update_attributes(params[:selected])
      redirect_to root_path
    end
  end

  def index
    @restaurant = Restaurant.find(params[:restaurant_id])
    @item1 = @restaurant.menu_items.first
    @item2 = @restaurant.menu_items.last
    # @restaurant = current_user.meal_offer_searches.last.restaurant
  end

end