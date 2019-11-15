class Api::SuppliersController < ApplicationController
  def index
    @suppliers = Supplier.all
    render 'index.json.jb'
  end

  def show
    supplier_id = params[:id]
    @supplier = Supplier.find_by(id: supplier_id)
    render 'show.json.jb'
  end
end
