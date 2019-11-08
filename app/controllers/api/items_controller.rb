class Api::ItemsController < ApplicationController

  def index
    @items = Item.all
    render 'index.json.jb'
  end

  def show
    item_id = params[:id]
    @item = Item.find_by(id: item_id)
    render 'one_item.json.jb'
  end

  def create
    @item = Item.new(
        name: params[:input_name],
        price: params[:input_price],
        description: params[:input_description],
        image_url: params[:input_image_url]
      )
    @item.save
    render 'one_item.json.jb'
  end

end
