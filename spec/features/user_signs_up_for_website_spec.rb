require 'spec_helper'

describe 'Signing up for Mystery Meals' do 
  it 'has all the forms needed to make a new account' do 
    visit '/'
    click_link 'Sign Up'
    expect(page).to have_content('Password')
    expect(page).to have_content('Email')
  end

  it 'Creates a new user when you fill in the forms' do 
    prev_count = User.count
    visit '/users/sign_up'
    fill_in 'Email', with: 'joejoe@m.com'
    fill_in 'Password', with: '12345asdf67'
    fill_in 'Password confirmation', with: '12345asdf67'
    click_button 'Sign up'
    expect(User.count).to eql(prev_count + 1)
  end

end