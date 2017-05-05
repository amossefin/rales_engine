class Api::V1::Merchants::MerchantsFindController < ApplicationController

  def index
    merchants = Merchant.where(merchant_params)
    render json: merchants
  end

  def show
    merchant = Merchant.find_by(merchant_params)
    render json: merchant
  end

  private

  def merchant_params
    params.permit(:id, :name, :created_at, :updated_at)
  end
end
