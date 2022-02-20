# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts 'cleaning DB'
Island.destroy_all
User.destroy_all
puts 'DB is cleaned'

puts 'Creating a single user & 2 islands...'

user1 = User.create!(
  email: 'ofek1997shitrit@gmail.com',
  password: '1234512345'
)
puts 'user was created'

island1 = Island.new(
  name: 'island 1',
  country: 'Israel',
  description: 'super cool',
  price_per_day: 50,
  avilable: true,
  size: 500
)

island2 = Island.new(
  name: 'island 2',
  country: 'Germany',
  description: 'kinda meh',
  price_per_day: 30,
  avilable: true,
  size: 100
)

island1.user = user1
island2.user = user1

island1.save
island2.save

puts 'a single user & 2 islands were created'
puts 'seed implemented!'
