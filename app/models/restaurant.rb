class Restaurant < ActiveRecord::Base
  attr_accessible :address, :description, :restaurant_image, :neighborhood, :remote_restaurant_image_url, :name, :price_anchor, :cuisine
  validates_presence_of :address, :description, :neighborhood, :name, :price_anchor, :cuisine
  mount_uploader :restaurant_image, RestaurantImageUploader

  has_many :menu_items
end
