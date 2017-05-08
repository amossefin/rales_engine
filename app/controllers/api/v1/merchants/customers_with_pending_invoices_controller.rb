class Api::V1::Merchants::CustomersWithPendingInvoicesController < ApplicationController

  def index
    byebug
    customers = Merchant.find(params[:id]).customers

  end

end
