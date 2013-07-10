require 'spec_helper'

describe 'New Restaurant being revealed' do
  let!(:user){FactoryGirl.create(:user)}
  let!(:menu_item){FactoryGirl.create(:menu_item)}
  before(:each) do
    sign_in_as(user)
    search_for_food(menu_item.restaurant.price_anchor)
  end
  context 'user has entered the proper info to search for a restaurant' do
    it 'user is shown what restaurant they are eating at' do
      expect(page).to have_content(menu_item.restaurant.name)
    end

    it 'Once a restaurant is picked link to correct restaurant page' do
      expect(page).to have_content(menu_item.restaurant.name)
    end

  end
end