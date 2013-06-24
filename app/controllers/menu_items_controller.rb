class MenuItemsController < ApplicationController

  def new
    @menu_item = MenuItem.new
  end

  def create
    @menu_item = MenuItem.new(params[:menu_item])

    if @menu_item.save
      redirect_to root_path, notice: 'Menu Item Was Created!!!'
    else
      render action: "new"
    end
  end


end