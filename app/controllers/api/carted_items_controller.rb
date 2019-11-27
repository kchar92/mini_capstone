class Api::CartedItemsController < ApplicationController
  def index
    @carted_items = current_user.carted_items.where(status: "carted")
    render 'index.json.jb'
  end
  def create
    @carted_item = CartedItem.new(
      user_id: current_user.id,
      item_id: params[:item_id],
      quantity: params[:quantity],
      status: "carted"
    )
    @carted_item.save
    render 'show.json.jb'
  end
end
