require 'rails_helper'

describe "Item Find Api" do
  it "can find first instance by id" do
    items  = create_list(:item, 5)
    item_id = items.sample.id
    item = items.select { |item| item.id == item_id}

    get "/api/v1/items/find?id=#{item_id}"

    expect(response).to be_success
    expect(response.body).to eq(item.to_json)
  end

end
