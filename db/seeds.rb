puts "Creating Seed..."

puts "Adding Users..."

10.times do
  User.create(email: Faker::Internet.email, password: '123456', first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, description: Faker::Lorem.paragraphs(1))
end

puts "Creating Orders..."
10.times do
  Order.create(user: User.all.sample, status: 'Pending')
end

puts "Adding Campaigns..."
10.times do
  Campaign.create(name: Faker::Company.catch_phrase, address: Faker::Address.full_address, description: Faker::Lorem.paragraphs(3), date: Faker::Date.forward(23), user: User.all.sample)
end

puts "Creating Ticket Categories..."
10.times do
  TicketCategory.create(name: Faker::Company.bs, campaign: Campaign.all.sample, quantity: rand(1..100), available_tickets: rand(1..50), description: Faker::Lorem.paragraphs(3))
end

puts "Creating Tickets..."
10.times do
  Ticket.create(order: Order.all.sample, ticket_category: TicketCategory.all.sample)
end

puts "Creating Genres..."
["Blues", "Classical", "Country", "Electronic", "Folk", "Jazz", "New age", "Reggae", "Rock"].each do |genre|
  Genre.create(name: genre)
end

puts "Creating Musicians..."
50.times do
  Musician.create(name: Faker::Music.band, genre: Genre.all.sample)
end

puts "Creating Performances..."
10.times do
  Performance.create(campaign: Campaign.all.sample, musician: Musician.all.sample)
end

puts "Done!"
