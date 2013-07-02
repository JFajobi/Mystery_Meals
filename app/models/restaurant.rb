class Restaurant < ActiveRecord::Base
  attr_accessible :address, :description, :restaurant_image, :neighborhood, :remote_restaurant_image_url, :name, :price_anchor, :cuisine
  validates_presence_of :address, :description, :neighborhood, :name, :price_anchor, :cuisine
  mount_uploader :restaurant_image, RestaurantImageUploader

  has_many :menu_items

  def self.price_filter(user_input)
    # write two unit tests in restaurant
    # one where you run price filter with existing restaurants with 
    # price anchors that match
    # and one where there are no restaurants that match
    array = Restaurant.where(price_anchor: user_input)
    
    array[rand(array.count)].name
  end

end
