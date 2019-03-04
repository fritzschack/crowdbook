["Blues", "Classical", "Country", "Electronic", "Folk", "Jazz", "New age", "Reggae", "Rock"].each do |genre|
  Genre.create(name: genre)
end

50.times do
  Musician.create(name: Faker::Music.band, genre: Genre.all.sample)
end
