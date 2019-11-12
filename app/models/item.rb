class Item < ApplicationRecord
  def is_discounted?
    if price < 10
      p true
    else
      p false
    end
  end

  def tax
    tax = 0.09
    price * tax
  end

  def total
    price + 1.09
  end
end
