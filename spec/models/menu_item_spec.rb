require 'spec_helper'

describe MenuItem do
  it {should validate_presence_of(:dish) }
  it {should validate_presence_of(:description) }
  it {should validate_presence_of(:cuisine) }
  it {should validate_presence_of(:restaurant) }
  it {should belong_to(:restaurant) }
  it {should have_many(:meals)}
end