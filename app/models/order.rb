class Order < ApplicationRecord
  belongs_to :user
  belongs_to :item
  has_many :carted_items
  has_many :items, through: :carted_items
end
