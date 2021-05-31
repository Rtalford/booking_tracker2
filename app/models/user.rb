class User < ApplicationRecord
  has_secure_password

  has_many :flights 
  has_many :airlines, through: :flights 

  validates :name, presence: :true
  validates :email, presence: true, uniqueness: true
  validates :password, presence: true, length: {in: 8..12}
end
