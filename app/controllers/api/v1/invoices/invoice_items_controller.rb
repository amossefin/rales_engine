class Api::V1::Invoices::InvoiceItemsController < ApplicationController

  def index
    invoice_items = Invoice.find(params[:id]).invoice_items
    render json: invoice_items.to_json( :only => [:id, :invoice_id, :item_id, :quantity, :unit_price])
  end

end
