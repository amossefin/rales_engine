class Api::V1::Items::FindController < ApplicationController

  before_action :convert_unit_price

  def index
    items = Item.where(item_params)
    render json: items
  end

  def show
    if item_params[:created_at]
      item = Item.where(item_params).first
      render json: item
    elsif item_params[:updated_at]
      item = Item.where(item_params).first
      render json: item
    else
      item = Item.find_by(item_params)
      render json: item
    end
  end

  private

  def item_params
    params.permit(:id, :name, :description, :unit_price, :merchant_id, :created_at, :updated_at)
  end

  def convert_unit_price
    if item_params[:unit_price]
      item_params[:unit_price].sub!('.', '')
    end
  end
end
