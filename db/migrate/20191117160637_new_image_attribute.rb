class NewImageAttribute < ActiveRecord::Migration[6.0]
  def change
    remove_column :items, :image_url, :string

    add_column :items, :url, :string
  end
end
