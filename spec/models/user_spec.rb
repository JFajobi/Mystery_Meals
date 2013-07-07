require 'spec_helper'

describe User do
 it {should validate_presence_of(:email)}
 it {should validate_presence_of(:password)}
 it {should have_many(:meal_offer_searches)}
 it {should have_many(:meals)}
 
 it 'user gets full name when using full name method' do 
  FactoryGirl.create(:user)
  new_user = User.first
  expect(new_user.full_name).to eql('JobiJuice FAJOBI')
 end 

 describe 'Uniqueness validations' do
  before(:each) do
    FactoryGirl.create(:user)
  end
  it {should validate_uniqueness_of(:email)}
  it {should validate_presence_of(:first_name)}
  it {should validate_presence_of(:last_name)}
 end
end
