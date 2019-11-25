class Api::CartedItemsController < ApplicationController
  def index
    @carted_items = current_user.carted_items
    render 'index.json.jb'
  end
  def create
    @carted_item = CartedItem.new(
      user_id: params[:user_id],
      item_id: params[:item_id],
      quantity: params[:quantity],
      status: params[:status],
      order_id: params[:order_id]
    )
    # @carted_item.save
    render 'show.json.jb'
  end
end
