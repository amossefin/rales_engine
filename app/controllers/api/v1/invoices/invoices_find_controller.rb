class Api::V1::Invoices::InvoicesFindController < ApplicationController

  def index
    invoices = Invoice.where(invoice_params)
    render json: invoices
  end

  def show
    invoice = Invoice.find_by(invoice_params)
    render json: invoice
  end

  private

  def invoice_params
    params.permit(:id, :customer_id, :merchant_id, :status, :created_at, :updated_at)
  end
end
