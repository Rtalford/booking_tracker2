class Airline < ApplicationRecord
    has_many :flights
    has_many :users, through: :flights

    scope :airs_flights, -> {joins(:flight).group('airlines.name')}

end
