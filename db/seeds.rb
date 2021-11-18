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

file = URI.open('https://lh3.googleusercontent.com/zDDxQC7M_4H4Tdg1KKzY5ob7vGdii90EPQ7_X12FNsfRtIwuCiB35QxkRzndEmXegaVhUiCQdSdeSAJRY1_kkoCDKrsmtogSygATSQ=w1400-k')
image1 = Item.new(name: "Bored Ape #1", price: '35', size: '631x631', user: max)
image1.photo.attach(io: file, filename: 'BAYC#1.jpg', content_type: 'image/png')
image1.save!

file = URI.open('https://gimg.gateimg.com/image/1624359131881493888.png')
image2 = Item.new(name: "Bored Ape #2", price: '45', size: '631x631', user: rayane)
image2.photo.attach(io: file, filename: 'BAYC#2.jpg', content_type: 'image/png')
image2.save!

# file = URI.open('https://news.artnet.com/app/news-upload/2021/08/Yuga-Labs-Bored-Ape-Yacht-Club-7940.jpg')
# image3 = Item.new(name: "Bored Ape #3", price: '28', size: '631x631', user: nico)
# image3.photo.attach(io: file, filename: 'BAYC#3.jpg', content_type: 'image/png')
# image3.save!

file = URI.open('https://cdn.coinranking.com/nft/0x60F80121C31A0d46B5279700f9DF786054aa5eE5/1149072.png?size=autox860')
image4 = Item.new(name: "Bored Ape #4", price: '33', size: '631x631', user: thomas)
image4.photo.attach(io: file, filename: 'BAYC#4.jpg', content_type: 'image/png')
image4.save!

file = URI.open('https://lh3.googleusercontent.com/_e-0JE_FveoI0kmmL7t3-2ELRA_ZRvFvy_PdVDq5Q_uDJXqYjgsxTrAAMzhkSA1-56RSO4GtbrWMwP5JK7PWuWscXV81XNwsj1mxPA=w1400-k')
image5 = Item.new(name: "Bored Ape #5", price: '38', size: '631x631', user: max)
image5.photo.attach(io: file, filename: 'BAYC#5.jpg', content_type: 'image/png')
image5.save!

file = URI.open('https://brasilnft.art.br/wp-content/uploads/2021/07/unnamed.png')
image6 = Item.new(name: "Bored Ape #6", price: '35', size: '631x631', user: max)
image6.photo.attach(io: file, filename: 'BAYC#6.jpg', content_type: 'image/png')
image6.save!

file = URI.open('https://www.nftculture.com/wp-content/uploads/2021/05/Bored-Ape-NFT-Culture.png')
image7 = Item.new(name: "Bored Ape #7", price: '33', size: '631x631', user: nico)
image7.photo.attach(io: file, filename: 'BAYC#7.jpg', content_type: 'image/png')
image7.save!

file = URI.open('https://www.nftculture.com/wp-content/uploads/2021/05/Bored-Ape-NFT-Bored-Ape-Yacht-Club-NFT-Culture.png')
image8 = Item.new(name: "Bored Ape #8", price: '39', size: '631x631', user: nico)
image8.photo.attach(io: file, filename: 'BAYC#8.jpg', content_type: 'image/png')
image8.save!

file = URI.open('https://lh3.googleusercontent.com/zHatATwhCxQQ3TheheRhFUfxgGCq5CtvajLZV80-XqmOJrDpsm8ZPzTthxnudilSN-YfdUiWGG04qMmHvuaSelZ-l95Ybs23z7oDgw=w1400-k')
image9 = Item.new(name: "Bored Ape #9", price: '32', size: '631x631', user: thomas)
image9.photo.attach(io: file, filename: 'BAYC#9.jpg', content_type: 'image/png')
image9.save!

file = URI.open('https://lh3.googleusercontent.com/GGNZrZNkz5NNiUOUk-_7iRWT3TPPV2W6zDu0n57zZNZiGNBLEd84n3pYs3fGfV9QEhcge1rtTd0lp1nM7Mv2ntJ3g8OisoGAczXf=w1400-k')
image10 = Item.new(name: "Bored Ape #10", price: '36', size: '631x631', user: rayane)
image10.photo.attach(io: file, filename: 'BAYC#10.jpg', content_type: 'image/png')
image10.save!

file = URI.open('https://www.larvalabs.com/cryptopunks/cryptopunk1759.png')
image11 = Item.new(name: "CryptoPunk #1", price: '76', size: '336x336', user: max)
image11.photo.attach(io: file, filename: 'Punk#1.jpg', content_type: 'image/png')
image11.save!

file = URI.open('https://www.larvalabs.com/cryptopunks/cryptopunk635.png')
image12 = Item.new(name: "CryptoPunk #2", price: '90', size: '336x336', user: nico)
image12.photo.attach(io: file, filename: 'Punk#2.jpg', content_type: 'image/png')
image12.save!

file = URI.open('https://www.larvalabs.com/cryptopunks/cryptopunk3561.png')
image13 = Item.new(name: "CryptoPunk #3", price: '70', size: '336x336', user: rayane)
image13.photo.attach(io: file, filename: 'Punk#3.jpg', content_type: 'image/png')
image13.save!

file = URI.open('https://www.larvalabs.com/cryptopunks/cryptopunk5782.png')
image14 = Item.new(name: "CryptoPunk #4", price: '85', size: '336x336', user: thomas)
image14.photo.attach(io: file, filename: 'Punk#4.jpg', content_type: 'image/png')
image14.save!

file = URI.open('https://www.larvalabs.com/cryptopunks/cryptopunk6334.png')
image15 = Item.new(name: "CryptoPunk #5", price: '82', size: '336x336', user: rayane)
image15.photo.attach(io: file, filename: 'Punk#5.jpg', content_type: 'image/png')
image15.save!

file = URI.open('https://www.larvalabs.com/cryptopunks/cryptopunk1522.png?customColor=638596')
image16 = Item.new(name: "CryptoPunk #6", price: '92', size: '336x336', user: thomas)
image16.photo.attach(io: file, filename: 'Punk#6.jpg', content_type: 'image/png')
image16.save!

file = URI.open('https://www.larvalabs.com/cryptopunks/cryptopunk4156.png')
image17 = Item.new(name: "CryptoPunk #7", price: '77', size: '336x336', user: nico)
image17.photo.attach(io: file, filename: 'Punk#7.jpg', content_type: 'image/png')
image17.save!

file = URI.open('https://www.larvalabs.com/cryptopunks/cryptopunk4534.png?customColor=638596')
image18 = Item.new(name: "CryptoPunk #8", price: '80', size: '336x336', user: nico)
image18.photo.attach(io: file, filename: 'Punk#8.jpg', content_type: 'image/png')
image18.save!

file = URI.open('https://www.larvalabs.com/cryptopunks/cryptopunk9298.png')
image19 = Item.new(name: "CryptoPunk #9", price: '79', size: '336x336', user: max)
image19.photo.attach(io: file, filename: 'Punk#9.jpg', content_type: 'image/png')
image19.save!

file = URI.open('https://shamirozery.com/wp-content/uploads/2017/12/cryptopunk1720.png')
image20 = Item.new(name: "CryptoPunk #10", price: '80', size: '336x336', user: max)
image20.photo.attach(io: file, filename: 'Punk#10.jpg', content_type: 'image/png')
image20.save!

file = URI.open('https://lh3.googleusercontent.com/-gLAlYetq2w7chjVKzeGRBXnNhEVPyorA7uVZjNoY0yRCFgulTZcnS1kShn6Mp8iPBP0tCmX_OdsyKbJIZsumDUxceJcHoH0J2gvcg=w1400-k')
image21 = Item.new(name: "Bored Ape Kennel Club #1", price: '25', size: '1262x1262', user: nico)
image21.photo.attach(io: file, filename: 'BAKC#1.jpg', content_type: 'image/png')
image21.save!

file = URI.open('https://static.nftgo.io/asset/metadata/image/763ffaddbd3368edb78c5f939f20f0e3c69e0a7e8265de19c2eedb6f2ab1d7c1')
image22 = Item.new(name: "Bored Ape Kennel Club #2", price: '22', size: '1262x1262', user: rayane)
image22.photo.attach(io: file, filename: 'BAKC#2.jpg', content_type: 'image/png')
image22.save!

file = URI.open('https://lh3.googleusercontent.com/4w5TMxhGAMG9uMSHIRmAkL4fz3PHBg29mKp_rQdyel_ok12dTvZMSo35NhNjWHOssKOR4y2TWa6vCphqqgCCEdMBMZmUN6K4FMZhTA=w1400-k')
image23 = Item.new(name: "Bored Ape Kennel Club #3", price: '27', size: '1262x1262', user: rayane)
image23.photo.attach(io: file, filename: 'BAKC#3.jpg', content_type: 'image/png')
image23.save!

file = URI.open('https://lh3.googleusercontent.com/v5n1tq0F07__0XcOG8TSxKx1BR8XgwreYRqLe1gBnUh7l7tuNLFX88PBQuH6PuvB_i-jJECNRzi4v-8J7e7-p5C3QftvAmM9SlJ7=w1400-k')
image24 = Item.new(name: "Bored Ape Kennel Club #4", price: '20', size: '1262x1262', user: thomas)
image24.photo.attach(io: file, filename: 'BAKC#4.jpg', content_type: 'image/png')
image24.save!

file = URI.open('https://static.nftgo.io/asset/metadata/image/fba2cceb80ffa7d61aac2852152247914ceab3431ebb3c1c097cad64449c980d')
image25 = Item.new(name: "Bored Ape Kennel Club #5", price: '26', size: '1262x1262', user: thomas)
image25.photo.attach(io: file, filename: 'BAKC#5.jpg', content_type: 'image/png')
image25.save!

file = URI.open('https://static.nftgo.io/asset/metadata/image/86aea1c16edc94c2b100a886fdee14f53a9101e4b134b88bd87df7725c405887')
image26 = Item.new(name: "Bored Ape Kennel Club #6", price: '28', size: '1262x1262', user: thomas)
image26.photo.attach(io: file, filename: 'BAKC#6.jpg', content_type: 'image/png')
image26.save!

file = URI.open('https://static.nftgo.io/asset/metadata/image/ae7a3203245dc42a625b5893c8df89a993e40263cad0d49204e943873a6bd9b9')
image27 = Item.new(name: "Bored Ape Kennel Club #7", price: '22', size: '1262x1262', user: max)
image27.photo.attach(io: file, filename: 'BAKC#7.jpg', content_type: 'image/png')
image27.save!

file = URI.open('https://static.nftgo.io/asset/metadata/image/8d0205c3bc1f11b6adb8c0130039892bad82a6e53d628b02bf66ecdde7f17573')
image28 = Item.new(name: "Bored Ape Kennel Club #8", price: '23', size: '1262x1262', user: max)
image28.photo.attach(io: file, filename: 'BAKC#8.jpg', content_type: 'image/png')
image28.save!

file = URI.open('https://static.nftgo.io/asset/metadata/image/e92558ae50d490ed6e1c94ecf4ac1eec2f71efae93becbecf66713b3d55c36df')
image29 = Item.new(name: "Bored Ape Kennel Club #9", price: '24', size: '1262x1262', user: nico)
image29.photo.attach(io: file, filename: 'BAKC#9.jpg', content_type: 'image/png')
image29.save!

file = URI.open('https://static.nftgo.io/asset/metadata/image/a46f8dab5ed4f22b23319c723a8f5806a8c46495037549b7a58c44153fc3bc52')
image30 = Item.new(name: "Bored Ape Kennel Club #10", price: '25', size: '1262x1262', user: nico)
image30.photo.attach(io: file, filename: 'BAKC#10.jpg', content_type: 'image/png')
image30.save!

file = URI.open('https://lh3.googleusercontent.com/rLvgYgTx5K0uDIyg0bMQX-tEdCjERpXo8gcuOX1vJRT8KPRwFhpAPYgmecCHcbUuXn1p7P47fkAfjqI6zJ4VAgb0szVNxtsJuiI_WQ=w1400-k')
image31 = Item.new(name: "CrypToadz #1", price: '25', size: '1400x1400', user: rayane)
image31.photo.attach(io: file, filename: 'CToadz#1.jpg', content_type: 'image/png')
image31.save!

file = URI.open('https://lh3.googleusercontent.com/1AMIovZi9nH2gUNW8Y8adoqdhdtP7prR5g6nJadaf_W8N-BXXbb5Fq8d-evYEGTYYa-SQCzncthRslpb3JyKwPa2UmoWrwLXlygIlB8=w1400-k')
image32 = Item.new(name: "CrypToadz #2", price: '12', size: '1400x1400', user: thomas)
image32.photo.attach(io: file, filename: 'CToadz#2.jpg', content_type: 'image/png')
image32.save!

file = URI.open('https://lh3.googleusercontent.com/v_ICbid3z8ZsSHX61rhcgnWG5F3xWeARsf0Bg0nWEQ0kL9tWqqqhT7Q3cK6ZJG0fiSsRlcZLKrZ8tm-kMNcaXaU0D8BDxcCGpM3T=w1400-k')
image33 = Item.new(name: "CrypToadz #3", price: '15', size: '1400x1400', user: rayane)
image33.photo.attach(io: file, filename: 'CToadz#3.jpg', content_type: 'image/png')
image33.save!

file = URI.open('https://lh3.googleusercontent.com/UrLF4YhuaUIGfCrHa4yWzSvf3w_J-JbzgaG1XmDOYHIVBhXgSjGfdevrCazcB-yI_GGNZyBWvkCMa223ThQp1-E1lldT3NE16vwAFw=w1400-k')
image34 = Item.new(name: "CrypToadz #4", price: '18', size: '1400x1400', user: nico)
image34.photo.attach(io: file, filename: 'CToadz#4.jpg', content_type: 'image/png')
image34.save!

file = URI.open('https://lh3.googleusercontent.com/2WzlPZhmzcaOCNMcBUE9Sq5jBZr5mE1MkBocIwXXloLAw1cSHa-vzcNK9LQ0mo9yONzXE-UTyfeseMI04ad1J_D4jtDLdOdW9O9b=w1400-k')
image35 = Item.new(name: "CrypToadz #5", price: '11', size: '1400x1400', user: max)
image35.photo.attach(io: file, filename: 'CToadz#5.jpg', content_type: 'image/png')
image35.save!

file = URI.open('https://lh3.googleusercontent.com/lMzK_L6juA3ch6J07sZfEEpsBzWYDRHoyyu0K_wXfHdp_-WmoQLq1Uie1rzvtbhaBVJnt2sXavVOosOjOihI5quNU2SKyWCrIrN0ZQ=w1400-k')
image36 = Item.new(name: "CrypToadz #6", price: '12', size: '1400x1400', user: max)
image36.photo.attach(io: file, filename: 'CToadz#6.jpg', content_type: 'image/png')
image36.save!

file = URI.open('https://lh3.googleusercontent.com/9qPkDx0-no3uw-Gg2CKPFLT_e2DDn7GbERHWdhFhzpeVmHkvlsDkC_DkWbFgpXY89xz7isCub9tPsNfiQru47YhexS-vs-oxs8tlUw=w1400-k')
image37 = Item.new(name: "CrypToadz #7", price: '25', size: '1400x1400', user: nico)
image37.photo.attach(io: file, filename: 'CToadz#7.jpg', content_type: 'image/png')
image37.save!

file = URI.open('https://lh3.googleusercontent.com/c8dYKhcxYZxS1HPKweb1aEFe64hvlj7JtXkNDUmpaF6GzXOxjdS65PW8uwzyjG4Tp1V3Tp0gTGklGtS68OBtXYUjudestm_gGixV=w1400-k')
image38 = Item.new(name: "CrypToadz #8", price: '14', size: '1400x1400', user: rayane)
image38.photo.attach(io: file, filename: 'CToadz#8.jpg', content_type: 'image/png')
image38.save!

file = URI.open('https://lh3.googleusercontent.com/-jBkwFUj8klxwbBPBTJUVSrEnXV5U92Ij-0JXILzCr-L0sZIZheMT7l8APko5g-3zL4Q73ZzrdmwDT4vTuQBAOPTqxDzMXXNkC5zBJI=w1400-k')
image39 = Item.new(name: "CrypToadz #9", price: '12', size: '1400x1400', user: nico)
image39.photo.attach(io: file, filename: 'CToadz#9.jpg', content_type: 'image/png')
image39.save!

file = URI.open('https://static.nftgo.io/asset/metadata/image/179f9a20e149f59aabea72eaf8b4396527d34d90dd820e133a7cedb2fc93f26a')
image40 = Item.new(name: "CrypToadz #10", price: '20', size: '1400x1400', user: thomas)
image40.photo.attach(io: file, filename: 'CToadz#10.jpg', content_type: 'image/png')
image40.save!

# Booking.create!(begin_date: Date.today, end_date: Date.today + 1, user: rayane, item: image)
# Booking.create!(begin_date: Date.today, end_date: Date.today + 1, user: nico, item: image1)
# Booking.create!(begin_date: Date.today, end_date: Date.today + 1, user: max, item: image)
# Booking.create!(begin_date: Date.today, end_date: Date.today + 1, user: thomas, item: image2)

# Booking.create!(begin_date: Date.today, end_date: Date.today + 1, user: rayane, item: image, status: 3)
# Booking.create!(begin_date: Date.today, end_date: Date.today + 1, user: nico, item: image2, status: 3)
# Booking.create!(begin_date: Date.today, end_date: Date.today + 1, user: max, item: image, status: 4)
# Booking.create!(begin_date: Date.today, end_date: Date.today + 1, user: thomas, item: image2, status: 4)

puts 'Seed Created'
