class Api::V1::Customers::FavoriteMerchantController < ApplicationController

  def index
    merchants = Customer.find(params[:id]).merchants
    counts = Hash.new 0

    merchants.each { |merchant| counts[merchant] +=1 }
    sorted = counts.sort_by { |k, v| v }
    fav_merchant = sorted.last[0]

    render json: fav_merchant
  end

end
