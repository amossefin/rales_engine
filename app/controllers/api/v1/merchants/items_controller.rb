class Api::V1::Merchants::ItemsController < ApplicationController

  def index
    items = Merchant.find(params[:id]).items
    render json: items.to_json( :only => [:description, :id, :merchant_id, :name, :unit_price])
  end

end
