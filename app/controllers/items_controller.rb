class ItemsController < ApplicationController
  def show
    @item = Item.find_by(id: params[:id])
    render 'show.html.erb'
  end
end
