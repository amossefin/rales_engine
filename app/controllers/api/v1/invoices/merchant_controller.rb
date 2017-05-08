class Api::V1::Invoices::MerchantController < ApplicationController

  def show
    merchant = Invoice.find(params[:id]).merchant
    render json: merchant.to_json( :only => [:description, :id, :merchant_id, :name, :unit_price])
  end

end
