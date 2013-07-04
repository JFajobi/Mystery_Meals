require 'spec_helper'

describe 'New Restaurant being revealed' do
  let(:user){FactoryGirl.create(:user)}
  let(:restaurant){FactoryGirl.create(:restaurant)}
  before(:each) do
    sign_in_as(user)
    create_restaurant(restaurant)
    search_for_food
  end
  context 'user has entered the proper info to search for a restaurant' do
    
    it 'user is shown what restaurant they are eating at' do
      expect(page).to have_content(restaurant.name)
    end

     it 'Once a restaurant is picked link to correct restaurant page' do
      click_link 'Click To Check Out The Restaurant'
      expect(page).to have_content(restaurant.name)
    end

  end
end