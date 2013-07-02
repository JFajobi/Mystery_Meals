class MenuItem < ActiveRecord::Base
  attr_accessible :cuisine, :description, :dish, :menu_item_image, :remote_menu_item_image_url, :restaurant
  validates_presence_of :cuisine, :description, :dish, :restaurant
   mount_uploader :menu_item_image, MenuItemImageUploader

  belongs_to :restaurant

end
