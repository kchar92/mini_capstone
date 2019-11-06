class Api::ItemsController < ApplicationController
  def every_item
    @items = Item.all
    render 'item.json.jb'
  end
end
