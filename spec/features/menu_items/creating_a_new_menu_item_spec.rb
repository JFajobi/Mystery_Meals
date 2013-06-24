require 'spec_helper'

describe 'creating a new menu item' do 

it 'creates a new menu item when form is filled in' do
  previous_count = MenuItem.count 
  visit new_menu_item_path
  fill_in 'Dish', with: 'Chicken Finger Surprise'
  fill_in 'Description', with: 'yummy yummy goodness'
  select 'Italian', from: 'Cuisine'
  click_button 'Submit'
  expect(MenuItem.count).to eql(previous_count + 1)
end

end