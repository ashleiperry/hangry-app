class Order < ApplicationRecord
  has_many :order_items
  has_many :items, through: :order_items
  validates :name, presence: true
  validates :restaurant_id, presence: true
end
