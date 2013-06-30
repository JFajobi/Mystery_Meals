require 'spec_helper'

describe User do
 it {should validate_presence_of(:email) }
 it {should validate_presence_of(:password) }
  
 describe 'Uniqueness validations' do
  before(:each) do
    FactoryGirl.create(:user)
  end
  it {should validate_uniqueness_of(:email)}
  it {should validate_presence_of(:first_name)}
  it {should validate_presence_of(:last_name)}
 end
end
