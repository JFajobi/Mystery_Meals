require 'spec_helper'

describe 'user selecting a menu item to eat' do 
  let(:user){FactoryGirl.create(:user)}
  let(:restaurant){FactoryGirl.create(:restaurant)}
  let!(:menu_item){FactoryGirl.create(:menu_item, restaurant: restaurant)}
  let!(:menu_item2){FactoryGirl.create(:menu_item, restaurant: restaurant, dish: "Jide's Ramen")}
  
  let(:meal_offer_search){user.meal_offer_searches.last}
  before(:each) do
    sign_in_as(user)
    search_for_food(restaurant.price_anchor)
  end

  it 'should have two food options per restaurant' do
    expect(page).to have_button menu_item.dish
    expect(page).to have_button menu_item2.dish
  end

  it 'once a user selects the first meal it gets selected' do
    click_on menu_item.dish
    expect(page).to have_content menu_item.dish
    expect(page).to_not have_content menu_item2.dish

  end

  it 'When user picks the first item they are taken to a confirmation page with the restaurant address' do
    click_on menu_item.dish
    expect(page).to have_content(menu_item.restaurant.address)
    expect(page).to have_content(menu_item.restaurant.price_anchor)
    expect(page).to have_content(menu_item.restaurant.name)
    expect(page).to have_content(menu_item.dish)
  end


  it 'When user picks the second item they are taken to a confirmation page with the restaurant address' do
    click_on menu_item2.dish
    expect(page).to have_content(menu_item2.restaurant.address)
    expect(page).to have_content(menu_item2.restaurant.price_anchor)
    expect(page).to have_content(menu_item2.restaurant.name)
    expect(page).to have_content(menu_item2.dish)
  end


end