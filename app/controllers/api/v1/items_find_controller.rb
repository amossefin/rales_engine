class Api::V1::ItemsFindController < ApplicationController

  before_action :convert_unit_price

  def index
  end

  def show
    item = Item.find_by(item_params)
    render json: item
  end

  private

  def item_params
    params.permit(:id, :name, :unit_price, :merchant_id, :created_at, :updated_at)
  end

  def convert_unit_price
    if item_params[:unit_price]
      item_params[:unit_price].sub!('.', '')
    else
      item_params
    end
  end
end
