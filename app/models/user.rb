class User < ApplicationRecord
  has_secure_password

  has_many :flights 
  has_many :airlines, through: :flights 
end
