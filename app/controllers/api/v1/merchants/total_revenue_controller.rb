class Api::V1::Merchants::TotalRevenueController < ApplicationController

  def index
    merchant = Merchant.find(params[:id])
    render json: merchant.total_revenue
  end

end
