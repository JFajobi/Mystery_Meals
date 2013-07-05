require 'spec_helper'

describe Meal do
  it {should validate_presence_of(:user_id)}
  it {should validate_presence_of(:restaurant_id)}
  it {should validate_presence_of(:menu_item_id)}
  it {should belong_to(:user)}
  it {should belong_to(:restaurant)}
  it {should belong_to(:menu_item)}
end
