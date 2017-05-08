class Api::V1::TransactionsController < ApplicationController

  def index
    transactions = Transaction.all
    render json: transactions.to_json( :only => [:id, :invoice_id, :credit_card_number, :result])
  end

  def show
    transaction = Transaction.find(params[:id])
    render json: transaction
  end
end
