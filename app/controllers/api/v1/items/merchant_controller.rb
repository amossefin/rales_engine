class Api::V1::Items::MerchantController < ApplicationController

  def show
    merchant = Item.find(params[:id]).merchant
    render json: merchant.to_json( :only => [:id, :name])
  end

end
