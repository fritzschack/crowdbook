puts "Creating Seed..."

puts "Adding Users..."
10.times do
  User.create(email: Faker::Internet.email, password: '123456', first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, description: Faker::Lorem.paragraphs(1))
end

puts "Creating Orders..."
10.times do
  Order.create(user: User.all.sample, status: 'Pending')
end

# 10.times do
#   Campaign.create(name: Faker::Company.catch_phrase, address: Faker::Address.full_address, description: Faker::Lorem.paragraphs(3), date: Faker::Date.forward(23), user: User.all.sample)
# end

puts "Creating Ticket Categories..."
5.times do
  TicketCategory.create(name: "Regular", campaign: Campaign.all.sample, quantity: rand(1..100), available_tickets: rand(1..50), description: Faker::Lorem.paragraphs(3))
end

5.times do
  TicketCategory.create(name: "VIP", campaign: Campaign.all.sample, quantity: rand(1..100), available_tickets: rand(1..50), description: Faker::Lorem.paragraphs(3))
end

puts "Creating Tickets..."
10.times do
  Ticket.create(order: Order.all.sample, ticket_category: TicketCategory.all.sample)
end

# ["Blues", "Classical", "Country", "Electronic", "Folk", "Jazz", "New age", "Reggae", "Rock"].each do |genre|
#   Genre.create(name: genre)
# end

# 50.times do
#   Musician.create(name: Faker::Music.band, genre: Genre.all.sample)
# end

# 10.times do
#   Performance.create(campaign: Campaign.all.sample, musician: Musician.all.sample)
# end




# puts "Creating Genres..."
# Genre.create(
#   name: "Indie"
# )

# rock = Genre.create(
#   name: "Rock"
# )

# Genre.create(
#   name: "Metal"
# )

# Genre.create(
#   name: "Pop"
# )

# Genre.create(
#   name: "Punk",
# )

# Genre.create(
#   name: "Electronic",
# )

# Genre.create(
#   name: "Garage"
# )

# Genre.create(
#   name: "Hip-hop",
# )

# Genre.create(
#   name: "Rap",
# )

puts "Creating Musicians..."

Musician.create(
  name: "Dulcie",
  genre_id: 3
)

Musician.create(
  name: "Fergus James",
  genre: rock
)

Musician.create(
  name: "Grace Turner",
  genre_id: 2
)

Musician.create(
  name: "Murmur",
  genre_id: "2"
)

Musician.create(
  name: "Nerve",
  genre_id: 6
)

Musician.create(
  name: "Ollie English",
  genre_id: 7
)

Musician.create(
  name: "Pridelands",
  genre_id: 3
)

Musician.create(
  name: "Redhook",
  genre_id: 5
)

Musician.create(
  name: "Tobiahs",
  genre_id: 8
)

Musician.create(
  name: "Will Clift",
  genre: rock
)

Musician.create(
  name: "Yours Truly",
  genre_id: 5
)

puts "Adding Campaigns..."

genres = ["Industrial & Gothic", "(Heavy) Metal", "Rock 'n' Roll", "Golden Age", "Punk (Rock) / (New) Wave", "Hardcore (Punk)", "Alternative / Indie (Rock)", "Contemporary (Rock)", "Pop (Music)", "Country", "Rhythm 'n' Blues (R&B)", "Gospel & Pioneers", "Blues", "Jazz", "Jamaican (Music) / Reggae", "Rap / Hip-hop Music", "Breakbeat", "Drum 'n' Bass / Jungle", "Hardcore (Techno)", "Techno", "House", "Trance", "Downtempo / Ambient"]

Campaign.create(
  name: "Duclie plays Richmond Club Hotel",
  address: Faker::Company.catch_phrase,
  description: Faker::Lorem.paragraphs(3),
  date: Faker::Date.forward(23),
  user: User.all.sample,
  genre: genres.sample
)

Campaign.create(
  name: "Fergus James plays Blue Diamond",
  address: Faker::Company.catch_phrase,
  description: Faker::Lorem.paragraphs(3),
  date: Faker::Date.forward(23),
  user: User.all.sample,
  genre: genres.sample
)

Campaign.create(
  name: "Grace Turner plays Cloud 9",
  address: Faker::Company.catch_phrase,
  description: Faker::Lorem.paragraphs(3),
  date: Faker::Date.forward(23),
  user: User.all.sample,
  genre: genres.sample
)

Campaign.create(
  name: "Murmur plays Brown Alley",
  address: Faker::Company.catch_phrase,
  description: Faker::Lorem.paragraphs(3),
  date: Faker::Date.forward(23),
  user: User.all.sample,
  genre: genres.sample
)

Campaign.create(
  name: "Nerve plays New Guernica",
  address: Faker::Company.catch_phrase,
  description: Faker::Lorem.paragraphs(3),
  date: Faker::Date.forward(23),
  user: User.all.sample,
  genre: genres.sample
)

Campaign.create(
  name: "Ollie English plays the Espy",
  address: Faker::Company.catch_phrase,
  description: Faker::Lorem.paragraphs(3),
  date: Faker::Date.forward(23),
  user: User.all.sample,
  genre: genres.sample
)

Campaign.create(
  name: "Pridelands plays Section 8",
  address: Faker::Company.catch_phrase,
  description: Faker::Lorem.paragraphs(3),
  date: Faker::Date.forward(23),
  user: User.all.sample,
  genre: genres.sample
)

Campaign.create(
  name: "Redhook plays Cherry Bar",
  address: Faker::Company.catch_phrase,
  description: Faker::Lorem.paragraphs(3),
  date: Faker::Date.forward(23),
  user: User.all.sample,
  genre: genres.sample
)

Campaign.create(
  name: "Tobiahs plays Public House",
  address: Faker::Company.catch_phrase,
  description: Faker::Lorem.paragraphs(3),
  date: Faker::Date.forward(23),
  user: User.all.sample,
  genre: genres.sample
)

Campaign.create(
  name: "Will Clift plays Corner Hotel Richmond",
  address: Faker::Company.catch_phrase,
  description: Faker::Lorem.paragraphs(3),
  date: Faker::Date.forward(23),
  user: User.all.sample,
  genre: genres.sample
)

puts "Creating Performances..."

Performance.create(
  campaign_id: 1,
  musician_id: 1
)

Performance.create(
  campaign_id: 2,
  musician_id: 2
)

Performance.create(
  campaign_id: 3,
  musician_id: 3
)

Performance.create(
  campaign_id: 4,
  musician_id: 4
)

Performance.create(
  campaign_id: 5,
  musician_id: 5
)

Performance.create(
  campaign_id: 6,
  musician_id: 6
)

Performance.create(
  campaign_id: 7,
  musician_id: 7
)

Performance.create(
  campaign_id: 8,
  musician_id: 8
)

Performance.create(
  campaign_id: 9,
  musician_id: 9
)

Performance.create(
  campaign_id: 10,
  musician_id: 10
)

Photo.create(
  campaign_id: 1,
  remote_image_url_url: "https://res.cloudinary.com/cjward/image/upload/v1551843076/band_1.jpg",
)

Photo.create(
  campaign_id: 2,
  remote_image_url_url: "https://res.cloudinary.com/cjward/image/upload/v1551843074/band_10.jpg",
)

Photo.create(
  campaign_id: 3,
  remote_image_url_url: "https://res.cloudinary.com/cjward/image/upload/v1551843075/band_11.jpg",
)

Photo.create(
  campaign_id: 4,
  remote_image_url_url: "https://res.cloudinary.com/cjward/image/upload/v1551843075/band_2.jpg",
)

Photo.create(
  campaign_id: 5,
  remote_image_url_url: "https://res.cloudinary.com/cjward/image/upload/v1551843076/band_3.jpg",
)

Photo.create(
  campaign_id: 6,
  remote_image_url_url: "https://res.cloudinary.com/cjward/image/upload/v1551843075/band_4.jpg",
)

Photo.create(
  campaign_id: 7,
  remote_image_url_url: "https://res.cloudinary.com/cjward/image/upload/v1551843075/band_6.jpg",
)

Photo.create(
  campaign_id: 8,
  remote_image_url_url: "https://res.cloudinary.com/cjward/image/upload/v1551843074/band_9.jpg",
)

Photo.create(
  campaign_id: 9,
  remote_image_url_url: "https://res.cloudinary.com/cjward/image/upload/v1551843075/band_5.jpg",
)

Photo.create(
  campaign_id: 10,
  remote_image_url_url: "https://res.cloudinary.com/cjward/image/upload/v1551843074/band_7.jpg",
)


