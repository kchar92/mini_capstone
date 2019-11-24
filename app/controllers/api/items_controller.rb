class Api::ItemsController < ApplicationController
  before_action :authenticate_admin, only: [:create, :update, :destroy]
  
  def index
    if current_user
      @items = Item.all
      render 'index.json.jb'
    else
      render json: []
    end

    # if params[:search]
    #   @items = Item.where("name LIKE ?", "%#{params[:search]}%")
    # else
    #   @items = Item.all
    # end

    # if params[:discount] == 'true'
    #   @items = @items.where("price <= ?", 150)
    # end

    # if params[:sort] && params[:sort_order]
    #   @items = @items.order(params[:sort] => params[:sort_order])
    # else
    #   @items = @items.order(:id)
    # end
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
    @item = Item.find_by(id: params[:id])
    @item.destroy
    render 'destory.json.jb'
  end
end