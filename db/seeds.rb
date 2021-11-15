# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
puts 'Seed Destroy'

rayane = User.create!(name: "Rayane", phone_number: '25548445', email: 'ceci@hotmail.com', password: 'harcore')
nico = User.create!(name: "Nico", phone_number: '255484125', email: 'ceca@hotmail.com', password: 'harcool')
max = User.create!(name: "Max", phone_number: '27748445', email: 'ce@hotmail.com', password: 'har2re')
thomas = User.create!(name: "Thomas", phone_number: '25555445', email: 'c@hotmail.com', password: 'haccrcore')

image = Item.create!(name: "Image", price: '15', size: '30x30', user: max)
image1 = Item.create!(name: "Image2", price: '16', size: '32x30', user: nico)
image2 = Item.create!(name: "Image3", price: '18', size: '40x30', user: rayane)

Booking.create!(begin_date: Date.today, end_date: Date.today + 1, user: rayane, item: image)
Booking.create!(begin_date: Date.today, end_date: Date.today + 1, user: nico, item: image2)

puts 'We create a fake guys'
