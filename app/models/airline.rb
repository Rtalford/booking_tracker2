class Airline < ApplicationRecord
    has_many :flights
    has_many :users, through: :flights

    scope :airlines_flights, -> {joins(:flight).group('airlines.name')}

end
