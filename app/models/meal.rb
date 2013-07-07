class Meal < ActiveRecord::Base
  attr_accessible :menu_item_id, :restaurant_id, :user_id
  validates_presence_of :menu_item_id, :restaurant_id, :user_id
  belongs_to :menu_item
  belongs_to :restaurant
  belongs_to :user
  has_many :reviews, dependent: :destroy
end