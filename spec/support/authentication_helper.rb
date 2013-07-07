module AuthenticationHelper 
  def sign_in_as(user)
    visit  new_user_session_path
    fill_in 'Email', with: user.email 
    fill_in 'Password', with: user.password 
    click_on 'Sign in'
  end

  def sign_up_as(user)
    visit new_user_registration_path
    fill_in 'First name', with: user.first_name
    fill_in 'Last name', with: user.last_name 
    fill_in 'Email', with: user.email
    fill_in 'Password', with: user.password
    fill_in 'Password confirmation', with: user.password_confirmation 
    click_button 'Sign up'
  end

  def create_restaurant(restaurant)
    visit new_restaurant_path
    fill_in 'Name', with: restaurant.name
    fill_in 'Address', with: restaurant.address
    fill_in 'Description', with: restaurant.description
    select restaurant.neighborhood, from: 'Neighborhood'
    select restaurant.price_anchor, from: 'Price'
    select restaurant.cuisine, from: 'Cuisine'
    click_button 'Submit'
  end

  def search_for_food
    visit new_meal_offer_search_path
    select '15', from: 'Price'
    select 'Jamaica Plain', from:'Neighborhood'
    select 'Seafood', from: 'Cuisine'
    click_button 'Submit'
  end

end