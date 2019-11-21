class Api::OrdersController < ApplicationController
  before_action :authenticate_user
  
  def index
      @orders = current_user.orders
      render 'index.json.jb'
  end

  def create
      item = Item.find_by(id: params[:item_id])
      subtotal = params[:quantity].to_i * item.price
      tax = subtotal * 0.09
      total = subtotal + tax

      @order = Order.new(
        user_id: current_user.id,
        item_id: params[:item_id],
        quantity: params[:quantity],
        subtotal: subtotal,
        tax: tax,
        total: total
      )
      @order.save!
      render 'show.json.jb'
  end
end
