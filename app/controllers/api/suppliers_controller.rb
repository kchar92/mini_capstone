class Api::SuppliersController < ApplicationController
  def index
    @suppliers = Supplier.all
    render 'suppliers_index.json.jb'
  end
end
