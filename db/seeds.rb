# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

garage_locations = ['Upper Street', 'Lower Street', 'Station Road', 'Church Hill', 'Cobblers Corner']

garages = garage_locations.map { |location| Garage.create!(location: location) }

cars = [
  {
    make: 'Ford',
    model: 'Mustang',
    garage: garages.first
  },
  {
    make: 'Honda',
    model: 'Jazz',
    garage: garages.first
  },
  {
    make: 'Subaru',
    model: 'Impreza',
    garage: garages.first
  },
  {
    make: 'Skoda',
    model: 'Citigo',
    garage: garages.second
  },
  {
    make: 'Skoda',
    model: 'Octavia',
    garage: garages.second
  },
  {
    make: 'Mazda',
    model: 'MX5',
    garage: garages.third
  },
  {
    make: 'Citroen',
    model: 'C3',
    garage: garages.fourth
  },
]

cars.each { |car| Car.create!(car) }