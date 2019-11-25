class Item < ApplicationRecord
  has_many :orders
  has_many :images
  belongs_to :supplier
  has_many :item_categories
  has_many :categories, through: :item_categories
  has_many :orders, through: :carted_items 

  validates :name, uniqueness: true
  validates :description, length: {minimum: 10}
  validates :price, numericality: {less_than_or_equal_to: 5000, greater_than_or_equal_to: 1}

  def images
    Image.where(item_id: id)
  end

  def supplier
    Supplier.find_by(id: supplier_id)
  end

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
