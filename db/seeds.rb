# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "create 3 animals"
names = ["bob", "alice", "leo", "bea"]
species = ["cat", "puma", "bull", "dog", "snake"]

x = rand(1..30)

3.times do
  new_pet = Pet.new(
    name: names.sample,
    species: Pet::SPECIES.sample,
    found_on: Date.new(2020, 7, x)
  )
  new_pet.save!
end
puts "creation done"
