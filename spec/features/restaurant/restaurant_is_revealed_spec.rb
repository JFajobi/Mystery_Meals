require 'spec_helper'

describe 'New Restaurant being revealed' do
  let(:user){FactoryGirl.create(:user)}
  context 'user has entered the proper info to search for a restaurant' do
    it 'user is shown what restaurant they are eating at' do
      sign_in_as(user)
      visit restaurant_reveals_path
      expect(page).to have_content('You Are Eating At...')
    end
  end
end