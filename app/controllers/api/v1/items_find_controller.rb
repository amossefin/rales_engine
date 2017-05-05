class Api::V1::ItemsFindController < ApplicationController

  before_action :convert_unit_price
  # before_action :convert_date

  def index
    items = Item.where(item_params)
    render json: items
  end

  def show
    item = Item.find_by(item_params)
    render json: item
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

  # def convert_date
  #   if params[:created_at]
  #     params.merge!(created_at: DateTime.parse(params[:created_at]).getutc)
  #   end
  # end

end
