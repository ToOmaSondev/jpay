# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "open-uri"

User.destroy_all
puts 'Seed Destroy'

rayane = User.create!(name: "Rayane", phone_number: '25548445', email: 'ceci@hotmail.com', password: 'harcore')
nico = User.create!(name: "Nico", phone_number: '255484125', email: 'ceca@hotmail.com', password: 'harcool')
max = User.create!(name: "Max", phone_number: '27748445', email: 'ce@hotmail.com', password: 'har2re')
thomas = User.create!(name: "Thomas", phone_number: '25555445', email: 'c@hotmail.com', password: 'haccrcore')

file = URI.open('https://upload.wikimedia.org/wikipedia/commons/thumb/8/82/NES-Console-Set.jpg/1200px-NES-Console-Set.jpg')
image4 = Item.new(name: "Image", price: '15', size: '30x30', user: max)
image4.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
image4.save!

file = URI.open('https://d1eh9yux7w8iql.cloudfront.net/product_images/1557727435.46.jpg')
image = Item.new(name: "Image", price: '15', size: '30x30', user: max)
image.photo.attach(io: file, filename: 'gameboy.jpg', content_type: 'image/png')
image.save!

file = URI.open('https://cdn-1.motorsport.com/images/amp/254B8MM0/s1000/red-bull-racing-2022-f1-car-1.jpg')
image1 = Item.new(name: "Image2", price: '16', size: '32x30', user: nico)
image1.photo.attach(io: file, filename: 'f1.jpg', content_type: 'image/png')
image1.save!

file = URI.open('https://upload.wikimedia.org/wikipedia/commons/0/0e/Chocolate02.png')
image2 = Item.new(name: "Image3", price: '18', size: '40x30', user: rayane)
image2.photo.attach(io: file, filename: 'chocolat.jpg', content_type: 'image/png')
image2.save!

file = URI.open('https://www.drivezeclerc.re/st-benoit/21701-large_default/nestle-chocapic-cereales-petit-dejeuner-430g.jpg')
image3 = Item.new(name: "Image3", price: '18', size: '40x30', user: rayane)
image3.photo.attach(io: file, filename: 'chocolat.jpg', content_type: 'image/png')
image3.save!

Booking.create!(begin_date: Date.today, end_date: Date.today + 1, user: rayane, item: image)
Booking.create!(begin_date: Date.today, end_date: Date.today + 1, user: nico, item: image1)
Booking.create!(begin_date: Date.today, end_date: Date.today + 1, user: max, item: image)
Booking.create!(begin_date: Date.today, end_date: Date.today + 1, user: thomas, item: image2)

Booking.create!(begin_date: Date.today, end_date: Date.today + 1, user: rayane, item: image, status: 3)
Booking.create!(begin_date: Date.today, end_date: Date.today + 1, user: nico, item: image2, status: 3)
Booking.create!(begin_date: Date.today, end_date: Date.today + 1, user: max, item: image, status: 4)
Booking.create!(begin_date: Date.today, end_date: Date.today + 1, user: thomas, item: image2, status: 4)

puts 'Seed Created'
