FactoryGirl.define do
  factory :invoice_item do
    item nil
    invoice nil
    quantity 1
    unit_price "MyString"
  end
end
