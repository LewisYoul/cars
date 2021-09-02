class Garage < ApplicationRecord
  has_many :cars
  has_many :green_cars, -> { where(color: :green) }, class_name: 'Car'
end
