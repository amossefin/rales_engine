FactoryGirl.define do
  factory :item do
    name "Pizza"
    description "A delicious food."
    unit_price "14.50"
    merchant factory: :merchant
  end
end
