class Api::ItemsController < ApplicationController

  def index
    @items = Item.all
    render 'index.json.jb'
  end

  def show
    item_id = params[:id]
    @item = Item.find_by(id: item_id)
    render 'item.json.jb'
  end

  def create
    @item = Item.new(
        name: params[:input_name],
        price: params[:input_price],
        description: params[:input_description],
        image_url: params[:input_image_url]
      )
    @item.save
    render 'item.json.jb'
  end

  def update
    # combination of show and create, kind of
    item_id = params[:id]
    @item = Item.find_by(id: item_id)

    @item.name = params[:input_name]
    @item.price = params[:input_price]
    @item.description = params[:input_description]
    @item.image_url = params[:input_image_url]
    @item.save

    render 'item.json.jb'
  end

  def destroy
    #find item
    @item = Item.find_by(id: params[:id])
    #destroy 
    @item.destroy
    render 'destory.json.jb'
  end

end
