class Api::V1::Invoices::CustomerController < ApplicationController

  def show
    customer = Invoice.find(params[:id]).customer
    render json: customer.to_json( :only => [:id, :first_name, :last_name])
  end

end
