class ItemIdStringToInteger < ActiveRecord::Migration[6.0]
  def change
    remove_column :images, :item_id, :string
  end
end
