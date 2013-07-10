class RestaurantsController < ApplicationController

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new(params[:restaurant])

    if @restaurant.save
      redirect_to root_path
    else
      render action: "new"
    end
  end

  def show
    @restaurant = Restaurant.find(params[:id])
    
  end
end
