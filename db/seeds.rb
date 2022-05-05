# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

Dogsitter.destroy_all
Dog.destroy_all
Stroll.destroy_all
City.destroy_all
JoinTable.destroy_all

10.times do
  city = City.create(city_name: Faker::Address.city)
end

100.times do
  dogistter1 = Dogsitter.create(name: Faker::Name.name, city: City.all.sample)
end

300.times do
  dog1 = Dog.create(pet_name: Faker::Name.name, city: City.all.sample)
end

stroll_array = ["Romantic", "Speedrace", "Discovery"]
150.times do
  stroll_city = City.all.sample
  stroll = Stroll.create(stroll_type: stroll_array.sample, dogsitter: Dogsitter.where(city: stroll_city).sample, city: City.all.sample)
end

130.times do
  random_city = City.all.sample
  random_dog1 = Dog.where(city: random_city).sample
  random_stroll1 = Stroll.where(city: random_city).sample
  random_dog1.strolls << random_stroll1
  random_city1 = City.all.sample
  random_stroll2 = Stroll.where(city: random_city1).sample
  random_dog2 = Dog.where(city: random_city1).sample
  random_stroll2.dogs << random_dog2
end
