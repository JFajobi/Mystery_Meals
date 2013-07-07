require 'spec_helper'

describe Review do
  it {should validate_presence_of(:meal_id)}
  it {should validate_presence_of(:user_id)}
  it {should validate_presence_of(:return)}
  it {should belong_to(:user)}
  it {should belong_to(:meal)}
end
