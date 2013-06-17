require 'spec_helper'

describe 'Signing up for Mystery Meals' do 
  it 'has all the forms needed to make a new account' do 
    visit '/'
    click_link 'Sign in To Discover New Restaurants'
    expect(page).to have_content('username')
    expect(page).to have_content('email')
  end
end