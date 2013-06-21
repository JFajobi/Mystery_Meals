require 'spec_helper'

describe Restaurant do
  it {should validate_presence_of(:address) }
  it {should validate_presence_of(:description) }
  it {should validate_presence_of(:neighborhood) }
end