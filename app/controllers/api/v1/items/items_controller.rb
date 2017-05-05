class Api::V1::Items::ItemsController < ApplicationController

  def index
    items = Item.all
    render json: items.to_json( :only => [:id, :name, :description, :unit_price, :merchant_id])
  end

  def show
    item = Item.find(params[:id])
    item.unit_price.insert(-3, '.')
    render json: item
  end
end
