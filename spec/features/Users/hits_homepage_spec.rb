require 'spec_helper'

describe 'user enters homepage' do
  it 'gives a user a link to join sign in/up' do
    visit root_path
    expect(page).to have_content('Log In')
    expect(page).to have_content('Sign Up')
    expect(page).to have_content('Try it Out!')
    expect(page).to have_content('Contact Us')
    expect(page).to have_content('Mystery Meals')
  end
end