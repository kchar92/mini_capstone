class Item < ApplicationRecord
  def is_discounted?
    if price < 10
      p "true"
    else
      p "false"
    end
  end

  def tax
    price + (price.to_i * 0.09)
  end
end
