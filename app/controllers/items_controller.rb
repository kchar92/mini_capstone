class ItemsController < ApplicationController
  def index
    @items = Item.all
    render 'index.html.erb'
  end
  def show
    @item = Item.find_by(id: params[:id])
    render 'show.html.erb'
  end
end
