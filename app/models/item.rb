class Item < ApplicationRecord

  validates :name, uniqueness: true
  validates :description, length: {minimum: 10}
  validates :price, numericality: {less_than_or_equal_to: 5000, greater_than_or_equal_to: 1}

  def is_discounted?
    if price <= 150
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
    price * 1.09
  end
end
