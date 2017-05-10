require 'rails_helper'

describe "Merchants Api" do
  it "can find all customers with pending invoices for one merchant" do

  merchant = create(:merchant)
  create_list(:customers, 3)
  create_list(:transactions, 7)
