class Api::V1::Merchants::InvoicesController < ApplicationController

  def index
    invoices = Merchant.find(params[:id]).invoices
    render json: invoices.to_json( :only => [:id, :merchant_id, :customer_id, :status])
  end

end
