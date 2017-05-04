require 'rails_helper'

describe "Items API" do
  it "can load individual items" do
    create_list(:item, 3)
    id = Item.last.id

    get "/api/v1/items/#{id}"

    expect(response).to be_success
  end
end
