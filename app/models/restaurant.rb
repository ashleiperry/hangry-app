class Restaurant < ApplicationRecord
  has_many :user_preferences
  has_one :user, through: :user_preferences
  validates :name, presence: true
  validates :address, presence: true
  validates :telephone_number, presence: true
  validates :hours_of_operation, presence: true
end
