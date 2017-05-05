class Api::V1::CustomersController < ApplicationController

  def index
    customers = Customer.all
    render json: customers.to_json( :only => [:id, :first_name, :last_name])
  end

  def show
    customer = Customer.find(params[:id])
    render json: customer
  end
end
