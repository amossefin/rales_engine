class Api::V1::InvoicesController < ApplicationController

  def index
    invoices = Invoice.all
    render json: invoices.to_json( :only => [:id, :customer_id, :merchant_id, :status])
  end

  def show
    invoice = Invoice.find(params[:id])
    render json: invoice
  end
end
