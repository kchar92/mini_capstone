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

  def create
    @supplier = Supplier.new(
      name: params[:name],
      phone_number: params[:phone_number],
      email: params[:email]
      )
    @supplier.save
    render 'show.json.jb'
  end

  def update
    @supplier = Supplier.find_by(id: params[:id])
    @supplier.name = params[:name] || @supplier.name
    @supplier.phone_number = params[:phone_number] || @supplier.phone_number
    @supplier.email = params[:email] || @supplier.email
    @supplier.save
    render 'show.json.jb'
  end
end
