class Api::OrdersController < ApplicationController
  before_action :authenticate_user
  
  def index
    @orders = current_user.orders
    render 'index.json.jb'
  end

  def create
    @order = Order.new(
      user_id: current_user.id,
      subtotal: 50.00,
      tax: 2.50,
      total: 52.50
    )
    @order.save!
    render 'show.json.jb'
  end
end
