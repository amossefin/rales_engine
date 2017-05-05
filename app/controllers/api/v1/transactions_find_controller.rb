class Api::V1::TransactionsFindController < ApplicationController

  def index
    transactions = Transaction.where(transaction_params)
    render json: transactions
  end

  def show
    transaction = Transaction.find_by(transaction_params)
    render json: transaction
  end

  private

  def transaction_params
    params.permit(:id, :invoice_id, :credit_card_number, :result, :created_at, :updated_at)
  end
end
