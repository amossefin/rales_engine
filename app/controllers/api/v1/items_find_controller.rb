class Api::V1::ItemsFindController < ApplicationController

  def index
  end

  def show
    render json: Item.find_by(item_params)
  end

  private

  def item_params
    params.permit(:id, :name, :unit_price)
  end
end
