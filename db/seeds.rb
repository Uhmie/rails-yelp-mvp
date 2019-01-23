# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'
restaurants_attributes = [
  {
    name: 'Dishoom',
    address: '7 Boundary St, London E2 7JE',
    phone_number: '+38 238 2384 230',
    category: 'japanese'
  },
  {
    name: 'Pizza East',
    address: '56A Shoreditch High St, London E1 6PQ',
    phone_number: '+23 330 233 433',
    category: 'italian'
  },
  {
    name: 'Beckerwirt',
    address: 'Böhmfeld, Bayern',
    phone_number: '+49 8406 2320',
    category: 'french'
  },
  {
    name: 'Oider Stadl in Walting',
    address: 'Walting, Bayern',
    phone_number: '+49 8442 3239',
    category: 'belgian'
  },
  {
    name: 'McDonalds',
    address: 'Ingolstadt, Bayern',
    phone_number: '+49 841 232938',
    category: 'chinese'
  }
]
Restaurant.create!(restaurants_attributes)
puts 'Finished!'
