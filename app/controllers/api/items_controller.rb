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
        name: params[:name],
        price: params[:price],
        description: params[:description],
        image_url: params[:image_url]
      )
    if @item.save
      render 'item.json.jb'
    else
      render json: {errors: @item.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def update
    item_id = params[:id]
    @item = Item.find_by(id: item_id)

    @item.name = params[:name] || @item.name
    @item.price = params[:price] || @item.price
    @item.description = params[:description] || @item.description
    @item.image_url = params[:image_url] || @item.image_url
    if @item.save
      render 'item.json.jb'
    else
      render json: {errors: @item.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def destroy
    #find item
    @item = Item.find_by(id: params[:id])
    #destroy 
    @item.destroy
    render 'destory.json.jb'
  end
end