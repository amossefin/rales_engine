class Api::V1::MerchantsController < ApplicationController

  def index
    merchants = Merchant.all
    render json: merchants.to_json( :only => [:id, :name])
  end

  def show
    merchant = Merchant.find(params[:id])
    render json: merchant
  end
end
