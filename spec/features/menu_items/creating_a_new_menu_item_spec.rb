require 'spec_helper'

describe 'creating a new menu item' do 
  let(:restaurant){FactoryGirl.create(:restaurant)}

  it 'creates a new menu item when form is filled in' do
    previous_count = MenuItem.count 
    visit new_restaurant_menu_item_path(restaurant)
    fill_in 'Dish', with: 'Chicken Finger Surprise'
    click_button 'Submit'
    expect(MenuItem.count).to eql(previous_count + 1)
  end

end