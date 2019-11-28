class Api::OrdersController < ApplicationController
  before_action :authenticate_user
  
  def index
    @orders = current_user.orders
    render 'index.json.jb'
  end

  def create
    @carted_items = current_user.carted_items.where(status: "carted")

    total = 0
    @carted_items.each do |carted_item|
      total += carted_item.quantity * carted_item.item.price
    end

    @order = Order.new(
      user_id: current_user.id,
      subtotal: total,
      tax: 2.50,
      total: 52.50
    )
    @order.save!
    render 'show.json.jb'
  end
end
