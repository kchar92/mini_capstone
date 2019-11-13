class ChangeDescriptionDataType < ActiveRecord::Migration[6.0]
  def change
    change_column :items, :description, :text
  end
end
