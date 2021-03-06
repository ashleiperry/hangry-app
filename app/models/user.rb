class User < ApplicationRecord
  has_many :orders
  has_many :restaurants, through: :orders
  validates_presence_of :first_name
  validates_presence_of :last_name
  validates_presence_of :zip_code
  validates :username, presence: true, uniqueness: true, length: {minimum: 6, maximum: 12}, format: { with: /^\w+$/, multiline: true }
  validates :email, presence: true, format: { with: /\A^([^@\s]+)@((?:[-a-z0-9]+.)+[a-z]{2,})$\z/i, multiline: true }
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
