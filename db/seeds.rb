puts "Cleaning database..."
Pet.destroy_all
User.destroy_all
Shelter.destroy_all

puts 'Creating our beloved Jerry'
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

puts 'Creating onwers, companies and respective pets'
10.times do
  print '#########'
  owner = User.create!(
    first_name: Faker::Name.first_name, 
    last_name: Faker::Name.last_name, 
    email: "#{Faker::Name.initials}@gmail.com", 
    user_type: "Shelter", 
    address: Faker::Address.street_address, 
    city: Faker::Address.city, 
    zip_code: Faker::Address.zip_code, 
    password: Faker::Movies::StarWars.character * 3, 
    birth_date: Faker::Date.birthday(min_age: 18, max_age: 65)
    )
  shelter = Shelter.create!(name: Faker::Company.name, user: owner)

  10.times do
    pet = Pet.create(
        name: Faker::Creature::Dog.name,
        age: (1..25).to_a.sample,
        shelter: shelter,
        animal_type: Faker::Creature::Animal.name,
        price_per_day: (5..50).to_a.sample,
        gender: Faker::Creature::Dog.gender,
        breed: Faker::Creature::Dog.breed,
        description: Faker::Creature::Dog.meme_phrase,
    )
  end
end
puts '#'
puts 'Done!'
