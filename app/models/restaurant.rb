class Restaurant < ApplicationRecord
  validates :name, presence: true
  validates :address, presence: true
  validates :telephone_number, presence: true
  validates :hours_of_operation, presence: true
end
