class RestaurantsController < ApplicationController

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new(params[:restaurant])

    if @restaurant.save
      redirect_to root_path, notice: 'restaurant was successfully submitted.'
    else
      render action: "new"
    end
  end
end
