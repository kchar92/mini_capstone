class Api::ItemsController < ApplicationController

  def index
    @items = Item.all
    render 'index.json.jb'
  end

  def show
    item_id = params[:id]
    @items = Item.find_by(id: item_id)
    render 'one_item.json.jb'
  end

end
