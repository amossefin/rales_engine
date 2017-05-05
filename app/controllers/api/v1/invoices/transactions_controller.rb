class Api::V1::Invoices::TransactionsController < ApplicationController

  def index
    transactions = Transaction.where(invoice_id: params[:id])
    render json: transactions.to_json( :only => [:credit_card_number, :id, :invoice_id, :result])
  end

end
