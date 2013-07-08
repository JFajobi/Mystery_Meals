require 'spec_helper'

describe 'user selecting a menu item to eat' do 
  let(:user){FactoryGirl.create(:user)}
  let(:restaurant){FactoryGirl.create(:restaurant)}
  let(:menu_item){FactoryGirl.create(:menu_item)}
  let(:meal_offer_search){user.meal_offer_searches.last}
  before(:each) do
    sign_in_as(user)
    create_restaurant(restaurant)
    menu_item
    FactoryGirl.create(:menu_item, dish: 'Tuna Sandwhich')
    search_for_food
  end

  it 'should have two food options per restaurant' do
    expect(page).to have_content('Pick Chicki Bicki SURPRISE!!')
    expect(page).to have_content('Pick Tuna Sandwhich')
  end

  it 'once a user selects the first meal it gets selected' do
    meal_offer_search
    click_on 'Pick Tuna Sandwhich'
    expect(meal_offer_search.selected).to eql(true)
  end

  pending 'When user picks the first item they are taken to a confirmation page with the restaurant address' do
    click_link 'Choose Me!'
    expect(page).to have_content(restaurant.address)
    expect(page).to have_content(restaurant.neighborhood)
    expect(page).to have_content(restaurant.cuisine)
    expect(page).to have_content(restaurant.price_anchor)
    expect(page).to have_content(restaurant.name)
  end


  pending 'When user picks the second item they are taken to a confirmation page with the restaurant address' do
    click_link 'NO Choose Me!'
    expect(page).to have_content(restaurant.address)
    expect(page).to have_content(restaurant.neighborhood)
    expect(page).to have_content(restaurant.cuisine)
    expect(page).to have_content(restaurant.price_anchor)
    expect(page).to have_content(restaurant.name)
  end


end