class Api::V1::InvoiceItems::InvoiceItemsController < ApplicationController

  def index
    invoice_items = InvoiceItem.all
    render json: invoice_items.to_json( :only => [:id, :item_id, :invoice_id, :quantity, :unit_price])
  end

  def show
    invoice_item = InvoiceItem.find(params[:id])
    invoice_item.unit_price.insert(-3, '.')
    render json: invoice_item
  end
end
