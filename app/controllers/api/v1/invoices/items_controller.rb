class Api::V1::Invoices::ItemsController < ApplicationController

  def index
    items = Invoice.find(params[:id]).items
    render json: items.to_json( :only => [:description, :id, :merchant_id, :name, :unit_price])
  end

end
