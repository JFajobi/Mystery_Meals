class MealOfferSearch < ActiveRecord::Base
  attr_accessible :cuisine, :neighborhood, :price_anchor, :user_id, :restaurant, :selected_meal_id
  validates_presence_of :price_anchor, :user_id, :restaurant



  CUISINE = ['Italian', 'BBQ', 'Japenese', 'American', 'Seafood']

  NEIGHBORHOOD = ['Allston/Brighton', 'Back Bay/Bay State Road',
                  'Beacon Hill/Bay Village', 'Charlestown', 'Chinatown',
                  'Dorchester/Mattapan', 'East Boston', 'Fenway/Kenmore',
                  'Hyde Park', 'Jamaica Plain', 'Mission Hill', 'North End',
                  'Roxbury', 'South Boston', 'South End/St. Botolph',
                  'West Roxbury/Roslindale']
  belongs_to :user
  belongs_to :restaurant

  def selected_meal
    MenuItem.find(selected_meal_id)
  end
end
