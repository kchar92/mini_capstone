class AddNumericUsingCast < ActiveRecord::Migration[6.0]
  def change
    change_column :items, :price, "numeric USING CAST(price AS numeric)"
  end
end
