class AddSupplierId < ActiveRecord::Migration[6.0]
  def change
    add_column :items, :supplier_id, :integer
  end
end
