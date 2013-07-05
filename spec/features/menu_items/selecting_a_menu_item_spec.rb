require 'spec_helper'

describe 'user selecting a menu item to eat' do 
  let(:user){FactoryGirl.create(:user)}
  let(:restaurant){FactoryGirl.create(:restaurant)}
  let(:menu_item){FactoryGirl.create(:menu_item)}
  before(:each) do
    sign_in_as(user)
    create_restaurant(restaurant)
    menu_item
    search_for_food
    click_link 'Click To Check Out The Restaurant'
  end

  it 'should have two food options per restaurant' do
    expect(page).to have_content('Meal Option 1')
    expect(page).to have_content('Meal Option 2')
  end

  it 'once a user selects the first meal a new meal is created' do
    previous_count = Meal.count
    click_link 'Choose Me!'
    expect(Meal.count).to eql(previous_count + 1)
  end

   it 'once a user selects the second meal a new meal is created' do
    previous_count = Meal.count
    click_link 'NO Choose Me!'
    binding.pry
    expect(Meal.count).to eql(previous_count + 1)
  end

  it 'When user picks the first item they are taken to a confirmation page with the restaurant address' do
    click_link 'Choose Me!'
    expect(page).to have_content(restaurant.address)
    expect(page).to have_content(restaurant.neighborhood)
    expect(page).to have_content(restaurant.cuisine)
    expect(page).to have_content(restaurant.price_anchor)
    expect(page).to have_content(restaurant.name)
  end


  it 'When user picks the second item they are taken to a confirmation page with the restaurant address' do
    click_link 'NO Choose Me!'
    expect(page).to have_content(restaurant.address)
    expect(page).to have_content(restaurant.neighborhood)
    expect(page).to have_content(restaurant.cuisine)
    expect(page).to have_content(restaurant.price_anchor)
    expect(page).to have_content(restaurant.name)
  end


end