class Api::V1::Transactions::InvoiceController < ApplicationController

  def show
    invoice = Transaction.find(params[:id]).invoice
    render json: invoice.to_json( :only => [:id, :merchant_id, :customer_id, :status])
  end

end
