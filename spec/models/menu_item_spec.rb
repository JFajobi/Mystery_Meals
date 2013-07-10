require 'spec_helper'

describe MenuItem do
  it {should validate_presence_of(:dish) }
  it {should validate_presence_of(:restaurant_id) }
  it {should belong_to(:restaurant) }
  it {should have_many(:meals)}
end