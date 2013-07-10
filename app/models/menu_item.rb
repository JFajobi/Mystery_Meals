class MenuItem < ActiveRecord::Base
  attr_accessible :dish, :menu_item_image, :remote_menu_item_image_url, :restaurant, :selected
  validates_presence_of :dish, :restaurant
   mount_uploader :menu_item_image, MenuItemImageUploader

  belongs_to :restaurant
  has_many :meals

end
