FactoryGirl.define do
  factory :restaurant do
    address "1415 Horizon ct"
    description "the best place you will ever eat"
    neighborhood "Jamaica Plain"
    name "Mikes Dog Shack"
    cuisine 'Italian'
    price_anchor 30
  end
end