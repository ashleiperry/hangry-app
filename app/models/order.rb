class Order < ApplicationRecord
  has_many :order_items
  has_many :items, through: :order_items
  belongs_to :restaurant
  belongs_to :user
  validates :name, presence: true
  validates :restaurant_id, presence: true
  validates :user_id, presence: true
end
