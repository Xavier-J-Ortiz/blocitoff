# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
require 'random_data'

5.times do
  User.create!(
      email:    RandomData.random_email,
      password: RandomData.random_sentence
  )
end

users = User.all
150.times do
  Item.create!(
      name:         RandomData.random_sentence,
      user_id: rand(1 .. users.length)
  )
end

# Create Posts

puts "Seed finished"
puts "#{User.count} users created"
puts "#{Item.count} items created"
