# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts 'cleaning DB'

puts '----BOOKINGS----'

puts 'deleting all the bookings...'
Booking.destroy_all
puts 'bookings got deleted!'

puts '----ISLANDS----'

puts 'deleting all the islands...'
Island.destroy_all
puts 'islands got deleted!'

puts '----USERS----'

puts 'deleting all the users...'
User.destroy_all
puts 'users got deleted!'

puts '----CREATE----'

puts 'Creating a single user & 20 islands...'

user1 = User.create!(
  email: 'ofek1997shitrit@gmail.com',
  password: '1234512345'
)
puts 'user was created'

20.times do
  Island.create!(
    name: Faker::JapaneseMedia::OnePiece.island,
    country: Faker::Address.country,
    description: 'super cool island, should book it now!',
    price_per_day: rand(500..10_000),
    avilable: true,
    size: rand(20..100_000),
    user_id: user1.id
  )
end

puts 'a single user & 20 islands were created'
puts 'seed was implemented implemented!'

# ARCHIVE

# island1 = Island.new(
#   name: 'island 1',
#   country: 'Israel',
#   description: 'super cool',
#   price_per_day: 50,
#   avilable: true,
#   size: 500
# )

# island2 = Island.new(
#   name: 'island 2',
#   country: 'Germany',
#   description: 'kinda meh',
#   price_per_day: 30,
#   avilable: true,
#   size: 100
# )

# island1.user = user1
# island2.user = user1

# island1.save
# island2.save
