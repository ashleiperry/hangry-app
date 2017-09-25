class UserPreference < ApplicationRecord
  belongs_to :user
  belongs_to :restaurant
  validates :restaurant_id, presence: true
  validates :user_id, presence: true
  validates :cuisine, presence: true

end
