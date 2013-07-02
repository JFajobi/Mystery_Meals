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

    it 'Once user selects the restaurant a new offer is created' do
      previous_count = user.restaurant_offers.count
      click_link 'Check Out The Restaurant'
      expect(user.restaurant_offers.count).to eql(previous_count + 1)
    end

  end
end