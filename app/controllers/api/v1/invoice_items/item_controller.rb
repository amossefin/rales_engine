class Api::V1::InvoiceItems::ItemController < ApplicationController

  def show
    item = InvoiceItem.find(params[:id]).item
    render json: item.to_json( :only => [:description, :id, :merchant_id, :name, :unit_price])
  end

end
