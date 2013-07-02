FactoryGirl.define do
  factory :restaurant do
    name 'Mikes Dog Shack'
    address "1415 Horizon ct"
    description "the best place you will ever eat"
    neighborhood "Jamaica Plain"
    cuisine 'Italian'
    price_anchor 15
  end
end