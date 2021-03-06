require 'spec_helper'

describe 'adding a new restaurant' do 
  it 'new restaurant is added once the proper fields are filled in' do
    visit new_restaurant_path
    pre_count = Restaurant.count
    fill_in 'Address', with: '1415 horizon ct'
    fill_in 'Name', with: 'Mikes Dog Shack'
    select 'Cambridge', from: 'Neighborhood'
    select 10, from: 'Price'
    select 'American', from: 'Cuisine'
    click_on 'Submit'    
    expect(Restaurant.count).to eql(pre_count + 1)
  end
end

