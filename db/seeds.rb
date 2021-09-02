# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

garage_locations = ['Upper Street', 'Lower Street', 'Station Road', 'Church Hill', 'Cobblers Corner']

garages = garage_locations.map { |location| Garage.create!(location: location) }

car_colors = %w(red green blue pink brown black)
cars = [
  {
    make: 'Ford',
    model: 'Mustang',
    garage: garages.first,
    color: car_colors.sample
  },
  {
    make: 'Honda',
    model: 'Jazz',
    garage: garages.first,
    color: car_colors.sample
  },
  {
    make: 'Subaru',
    model: 'Impreza',
    garage: garages.first,
    color: car_colors.sample
  },
  {
    make: 'Skoda',
    model: 'Citigo',
    garage: garages.second,
    color: car_colors.sample
  },
  {
    make: 'Skoda',
    model: 'Octavia',
    garage: garages.second,
    color: car_colors.sample
  },
  {
    make: 'Mazda',
    model: 'MX5',
    garage: garages.third,
    color: car_colors.sample
  },
  {
    make: 'Citroen',
    model: 'C3',
    garage: garages.fourth,
    color: car_colors.sample
  },
]

cars.each { |car| Car.create!(car) }