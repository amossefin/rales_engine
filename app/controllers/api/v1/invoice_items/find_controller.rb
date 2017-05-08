class Api::V1::InvoiceItems::FindController < ApplicationController

  before_action :convert_unit_price

  def index
    invoice_items = InvoiceItem.where(invoice_item_params)
    render json: invoice_items
  end

  def show
    invoice_item = InvoiceItem.find_by(invoice_item_params)
    render json: invoice_item
  end

  private

  def invoice_item_params
    params.permit(:id, :item_id, :invoice_id, :quantity, :unit_price, :created_at, :updated_at)
  end

  def convert_unit_price
    if invoice_item_params[:unit_price]
      invoice_item_params[:unit_price].sub!('.', '')
    end
  end

end
