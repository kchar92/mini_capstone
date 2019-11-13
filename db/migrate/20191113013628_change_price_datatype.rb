class ChangePriceDatatype < ActiveRecord::Migration[6.0]
  def change
    change_column :items, :price, :decimal, precision: 7, scale: 2
  end
end
