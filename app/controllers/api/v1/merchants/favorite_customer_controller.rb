class Api::V1::Merchants::FavoriteCustomerController < ApplicationController

  def index
    customers = Merchant.find(params[:id]).customers
    counts = Hash.new 0

    customers.each { |customer| counts[customer] +=1 }
    sorted = counts.sort_by { |k, v| v }
    fav_customer = sorted.last[0]

    render json: fav_customer
  end

end
