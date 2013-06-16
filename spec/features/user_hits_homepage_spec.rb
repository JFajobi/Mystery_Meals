require 'spec_helper'

describe 'user enters homepage' do
  it 'shows gives a user a link to join sign in/up' do
    visit '/'
    expect(page).to have_content('Sign in To Discover New Restaurants')
  end
end