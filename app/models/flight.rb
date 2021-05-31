class Flight < ApplicationRecord
  belongs_to :user
  belongs_to :airline


  validates :depart_date, presence: :true 
  validates :return_date, presence: :true 
  validates :airline, presence: :true

end
