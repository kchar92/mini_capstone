class ItemsController < ApplicationController
  def index
    @items = Item.all
    render 'index.html.erb'
  end
  def show
    @item = Item.find_by(id: params[:id])
    render 'show.html.erb'
  end
  def new
    render 'new.html.erb'
  end
  def create
    @item = Item.new(
      name: params[:item_name],
      description: params[:description],
      price: params[:price],
      supplier_id: params[:supplier_id]
    )
    @item.save
    redirect_to "/items/#{@item.id}"
  end
  def edit
    @item = Item.find_by(id: params[:id])
    render 'edit.html.erb'
  end
  def update
    @item = Item.find_by(id: params[:id])
    @item.name = params[:name]
    @item.description = params[:description]
    @item.price = params[:price]
    @item.supplier.name = params[:supplier]
    @item.save
    redirect_to "/items/#{@item.id}"
  end
end
