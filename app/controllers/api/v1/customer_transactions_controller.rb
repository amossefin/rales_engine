class Api::V1::CustomerTransactionsController < ApplicationController

  def index
    transactions = Customer.find(params[:id]).transactions
    render json: transactions.to_json( :only => [:credit_card_number, :id, :invoice_id, :result])
  end

end
