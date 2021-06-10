class User < ApplicationRecord
  has_secure_password

  has_many :flights 
  has_many :airlines, through: :flights 

  
  validates :email, presence: true, uniqueness: true
  validates :password, presence: true, length: {in: 6..12}
end
