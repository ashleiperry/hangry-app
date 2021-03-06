class Item < ApplicationRecord
  belongs_to :restaurant
  has_many :order_items
  has_many :orders, through: :order_items
  validates :name, presence: true
  validates :restaurant_id, presence: true
end
