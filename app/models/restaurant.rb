class Restaurant < ApplicationRecord
  has_many :orders
  has_many :users, through: :orders
  validates :name, presence: true
  validates :address, presence: true
  validates :telephone_number, presence: true
  validates :hours_of_operation, presence: true
end
