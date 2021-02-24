# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Cleaning database..."
Pet.destroy_all
User.destroy_all
Shelter.destroy_all

jerry = User.create!(
  first_name: "Jerry", 
  last_name: "Deren", 
  email: "jerryderry@aol.com", 
  user_type: "Caretaker", 
  address: "31 Taco Bell", 
  city: "Lisbon", 
  zip_code: 10965, 
  password: "123456", 
  birth_date: Date.today
)

  owner = User.create!(
    first_name: "John", 
    last_name: "Jones", 
    email: "hallal@aol.com", 
    user_type: "Shelter", 
    address: "14 Brighton", 
    city: "Lisbon", 
    zip_code: 10965, 
    password: "123456", 
    birth_date: Date.today
    )

  Shelter.create(name: "Puppy Palace", user_id: owner)
 
  Reservation.create!(
  user_id: 14,
  pet_id: ,
  start_date: Date.new(2001,2,3),
  end_date: Date.new(2001,3,3),
  total_price: 100.0
   )
      
# 10.times do
#   Pet.create(
#     name: Faker::Creature::Dog.name,
#     age: Faker::Number.between(from: 1, to: 10),
#     shelter: Shelter.first,
#     animal_type: Faker::Creature::Animal.name,
#     price_per_day: 55,
#     gender: Faker::Creature::Dog.gender,
#     breed: Faker::Creature::Dog.breed,
#     description: Faker::Creature::Dog.meme_phrase
# )
# end







puts "Finished!"
