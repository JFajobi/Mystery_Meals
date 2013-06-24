class MenuItem < ActiveRecord::Base
  attr_accessible :cuisine, :description, :dish, :menu_item_image, :remote_menu_item_image_url
  validates_presence_of :cuisine, :description, :dish
   mount_uploader :menu_item_image, MenuItemImageUploader
  #TODO: add restaurant_id
end
