class Review < ActiveRecord::Base
  attr_accessible :comment, :meal_id, :return, :user_id
  validates_presence_of :meal_id, :user_id, :return
  belongs_to :user
  belongs_to :meal
end
