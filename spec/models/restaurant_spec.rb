require 'spec_helper'

describe Restaurant do
  let(:restaurant){FactoryGirl.create(:restaurant)}
  it {should validate_presence_of(:address) }
  it {should validate_presence_of(:description) }
  it {should validate_presence_of(:neighborhood) }
  it {should validate_presence_of(:name) }
  it {should validate_presence_of(:price_anchor) }
  it {should validate_presence_of(:cuisine) }
  it {should have_many(:menu_items) }
 
  it 'If user inputs a valid value a restaurant is generated' do
    restaurant
    expect(Restaurant.price_filter(15)).to_not eql(nil)
  end
end