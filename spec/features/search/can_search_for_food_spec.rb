require 'spec_helper'

describe 'searching for food' do
  it 'a valid meal offer search is created' do
    prev_count = MealOfferSearch.count
    visit new_meal_offer_search_path
    select '15', from: 'Price anchor'
    select 'Back Bay', from:'Neighborhood'
    select 'Italian', from: 'Cuisine'
    click_button 'Submit'
    expect(MealOfferSearch.count).to eql(prev_count + 1)
  end

end