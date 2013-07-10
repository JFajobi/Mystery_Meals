class Restaurant < ActiveRecord::Base
  attr_accessible :address, :restaurant_image,
                  :neighborhood, :remote_restaurant_image_url,
                  :name, :price_anchor, :cuisine, :restaurant_image_cache

  validates_presence_of :address, :neighborhood, :name, :price_anchor, :cuisine
  mount_uploader :restaurant_image, RestaurantImageUploader

  has_many :menu_items, dependent: :destroy
  has_many :meals, dependent: :destroy
  has_many :meal_offer_searches, dependent: :destroy

  def self.price_filter(price, cuisine, neighborhood)
     where(price_anchor: price, cuisine: cuisine, neighborhood: neighborhood).sample
  end

end
