class Supplier < ApplicationRecord
  def items
    Item.where(supplier_id: id)
  end
end
