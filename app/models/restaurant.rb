class Restaurant < ActiveRecord::Base
  attr_accessible :address, :description, :restaurant_image,
                  :neighborhood, :remote_restaurant_image_url,
                  :name, :price_anchor, :cuisine, :restaurant_image_cache

  # TODO: delete restaurant_image_cache
  # If restaurant image break delete restaurant_image_cache
  # from attr_accessible !!!!!
  validates_presence_of :address, :description, :neighborhood, :name, :price_anchor, :cuisine
  mount_uploader :restaurant_image, RestaurantImageUploader

  has_many :menu_items, dependent: :destroy
  has_many :meals, dependent: :destroy
  has_many :meal_offer_searches, dependent: :destroy

  def self.price_filter(user_input)
    where(price_anchor: user_input).sample
  end

end
