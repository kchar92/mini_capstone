class Image < ApplicationRecord
  def item
    Item.find_by(id: item_id)
  end
end
