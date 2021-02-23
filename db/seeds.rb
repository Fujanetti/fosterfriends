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

jerry_the_dog = {
    name: FAKER::Creature::Dog.name,
    age: Faker::Number.between(from: 1, to: 10),
    shelter_id: 1,
    animal_type: Faker::Creature::Animal.name,
    price_per_day: Faker::Creature::Animal.name,
    gender: Faker::Creature::Dog.gender,
    breed: Faker::Creature::Dog.breed,
    description: Faker::Creature::Dog.meme_phrase
}

giura_the_dog = {
  name: FAKER::Creature::Dog.name,
  age: Faker::Number.between(from: 1, to: 10),
  shelter_id: 2,
  animal_type: Faker::Creature::Animal.name,
  price_per_day: Faker::Creature::Animal.name,
  gender: Faker::Creature::Dog.gender,
  breed: Faker::Creature::Dog.breed,
  description: Faker::Creature::Dog.meme_phrase
}


[jerry_the_dog, giura_the_dog].each do |attributes|
  pet = Pet.create!(attributes)
  puts "Created #{pet.name}"
end

puts "Finished!"