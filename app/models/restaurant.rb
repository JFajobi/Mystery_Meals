class Restaurant < ActiveRecord::Base
  attr_accessible :address, :description, :restaurant_image, :neighborhood, :remote_restaurant_image_url
  validates_presence_of :address, :description, :neighborhood
  mount_uploader :restaurant_image, RestaurantImageUploader

  has_many :menu_items
end
