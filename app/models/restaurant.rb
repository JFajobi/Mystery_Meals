class Restaurant < ActiveRecord::Base
  attr_accessible :address, :description, :image, :neighborhood
  validates_presence_of :address, :description, :neighborhood
end
