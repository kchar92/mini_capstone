class Api::ItemsController < ApplicationController

  def every_item
    @items = Item.all
    render 'item.json.jb'
  end

  def bicycle
    @bicycle = Item.find_by(name: "bicycle")
    render 'bicycle.json.jb'
  end

  def skateboard
    @skateboard = Item.find_by(name: "skateboard")
    render 'skateboard.json.jb'
  end

  def snowboard
    @snowboard = Item.find_by(name: "snowboard")
    render 'snowboard.json.jb'
  end

end
