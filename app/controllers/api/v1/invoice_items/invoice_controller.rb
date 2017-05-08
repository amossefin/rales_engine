class Api::V1::InvoiceItems::InvoiceController < ApplicationController

  def show
    invoice = InvoiceItem.find(params[:id]).invoice
    render json: invoice.to_json( :only => [:customer_id, :id, :merchant_id, :status])
  end

end
