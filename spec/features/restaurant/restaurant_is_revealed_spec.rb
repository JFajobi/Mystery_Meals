require 'spec_helper'

describe 'New Restaurant being revealed' do
  let(:user){FactoryGirl.create(:user)}
  let(:restaurant){FactoryGirl.create(:restaurant)}
  context 'user has entered the proper info to search for a restaurant' do
    it 'user is shown what restaurant they are eating at' do
      sign_in_as(user)
      create_restaurant(restaurant)
      search_for_food
      expect(page).to have_content("You're going to:")
    end
  end
end