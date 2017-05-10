class Api::V1::Merchants::CustomersWithPendingInvoicesController < ApplicationController

  def index
    transactions = Merchant.find(params[:id]).transactions.to_a
    transactions.select! do |trans|
      trans.result == "failed"
    end
    transactions.map! do |trans|
      trans.customer
    end
  render json: transactions
  end

end
