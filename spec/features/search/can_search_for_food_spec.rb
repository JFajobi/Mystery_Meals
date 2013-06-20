require 'spec_helper'

describe 'searching for food' do
  it 'a valid meal offer search is created' do
    prev_count = MealOfferSearh.count
    visit new_meal_offer_search_path
    select '$15', from: 'Price'
    select 'Back Bay', from:'Neighborhood'
    select 'Italian', from: 'Cuisine'
    click_botton 'Submit'
    expect(MealOfferSearch.count).to eql(pre_count + 1)
  end

end