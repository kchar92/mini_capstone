class AddForeignKeyToImage < ActiveRecord::Migration[6.0]
  def change
    add_column :images, :item_id, :string
  end
end
