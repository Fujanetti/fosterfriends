# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Cleaning database..."
Pet.destroy_all

puts "Creating pets..."

10.times do
  pet = Pet.new(
    name: FAKER::Creature::Dog.name,
    age: Faker::Number.between(from: 1, to: 10),
    animal_type: Faker::Creature::Animal.name,
    price_per_day: Faker::Creature::Animal.name,
    gender: Faker::Creature::Dog.gender,
    breed: Faker::Creature::Dog.breed,
    description: Faker::Creature::Dog.meme_phrase
  )
  pet.save!
end

puts "#{pet}"