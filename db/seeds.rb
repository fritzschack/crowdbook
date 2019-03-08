puts "Creating Seed..."

puts "Adding Users..."
10.times do
  User.create(email: Faker::Internet.email, password: '123456', first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, description: Faker::Lorem.paragraphs(1))
end

puts "Creating Orders..."
10.times do
  Order.create(user: User.all.sample)
end

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

puts "Creating Musicians..."

Musician.create(
  name: "Dulcie"
)

Musician.create(
  name: "Fergus James"
)

Musician.create(
  name: "Grace Turner"
)

Musician.create(
  name: "Murmur"
)

Musician.create(
  name: "Nerve"
)

Musician.create(
  name: "Ollie English"
)

Musician.create(
  name: "Pridelands"
)

Musician.create(
  name: "Redhook"
)

Musician.create(
  name: "Tobiahs"
)

Musician.create(
  name: "Will Clift"
)

Musician.create(
  name: "Yours Truly"
)

puts "Adding Campaigns..."

genres = ["Industrial & Gothic", "(Heavy) Metal", "Rock 'n' Roll", "Golden Age", "Punk (Rock) / (New) Wave", "Hardcore (Punk)", "Alternative / Indie (Rock)", "Contemporary (Rock)", "Pop (Music)", "Country", "Rhythm 'n' Blues (R&B)", "Gospel & Pioneers", "Blues", "Jazz", "Jamaican (Music) / Reggae", "Rap / Hip-hop Music", "Breakbeat", "Drum 'n' Bass / Jungle", "Hardcore (Techno)", "Techno", "House", "Trance", "Downtempo / Ambient"]

Campaign.create(
  name: "Duclie plays Richmond Club Hotel",
  address: "100 Swan St, Richmond VIC 3121",
  description: "Who’s ready to rock!
    We are so proud that we could be holding Dulcie here if you guys can support! They are an independent group which have been featured in The Metro, RedBull Music, Line of Best Fit, COMPLEX and real life actual play-listing on the BBC Radio 1. They’ve been working closely with Ben Cartwright (co-writer and producer) as well as collaborating with some brand new, talented peeps to add to some more flavours into the mix. Dulcie have dug deep as an independent artist to create music they are proud of and excited for you to hear. All they need now is a little help from you guys!
    Let's get it! 
    Love,
    Dulcie",
  date: Faker::Date.forward(23),
  user: User.all.sample,
  genre: genres.sample
)

Campaign.create(
  name: "Fergus James plays Blue Diamond",
  address: "123 Queen St, Melbourne VIC 3000",
  description: "Blue Diamond is ready to present Fergus James, one of the hottest up and commers in Melbourne. All you have to do? Pledge, Back, Donate, Buy A Ticket to one of the hottest events of the Melbourne Calendar this year! Most recently teenage troubadour Fergus James revealed his electrifying new single ‘What Are We Waiting For’, added in to HIGH rotation on Triple J. ‘What Are Waiting For’ is the follow up to his debut single ’Golden Age’, which has amassed over 5,000,000 plays on Spotify & Apple Music. After the release of ‘Golden Age’ the young artist’s triple j unearthed profile become the second most viewed profile on the platform in the first half of 2018, only behind G-Flip.
Fergus James recently supported Ed Sheeran on the biggest stadium tour in Australian history having sold over one million tickets.",
  date: Faker::Date.forward(23),
  user: User.all.sample,
  genre: genres.sample
)

Campaign.create(
  name: "Grace Turner plays Cloud 9",
  address: "60 King St, Melbourne VIC 3000",
  description: "Cloud 9 is teaming up with local Melbourne artist Grace Turner. To be there, there is one thing you have to do! BUY A TICKET! Grace Turner, a singer songwriter from the industrial town of Newcastle, Australia is renown for her emotionally-driven indie-folk songs, which are intensely personal. Turner has lived immersed with creative influences; her mother a visual artist and her father a poet. Falling somewhere between alt country and indie rock, Turner entices exciting possibility with her song writing and sound. ",
  date: Faker::Date.forward(23),
  user: User.all.sample,
  genre: genres.sample
)

Campaign.create(
  name: "Murmurmur plays Brown Alley",
  address: "585 Lonsdale St, Melbourne VIC 3000",
  description: "Be there or be square when Murmurmur take Brown Alley on a night of wild adventure. Only one thing needs to happen for this to take place, you pledge. Murmurmur (pronounced mer-mer-mer) was born in February 2017 when Will Fletcher stumbled across the idiosyncratic guitar riff that provides the defining moment in “I Can’t Stop Thinking About All The Time It's Taken From You”. Fletcher was soon joined by Alex Crosara (guitar), Fintan Bradley (synthesiser), Jack Davies (bass) and Luke Haaja (drums), who helped to bring his prog/psych-pop odysseys to life. Across the four songs that comprise murmurmur’s debut self-titled EP (produced by Oscar Dawson of Holy Holy), Fletcher’s haunting, emotive vocal blends with guitar hooks that sink into the recesses of your mind and stay there. There is an urgency to murmurmur’s soundscapes - they sound like a time and place you’re not aware of but which you’re desperate to find.",
  date: Faker::Date.forward(23),
  user: User.all.sample,
  genre: genres.sample
)

Campaign.create(
  name: "Nerve plays New Guernica",
  address: '322 Little Collins St, Melbourne VIC 3000',
  description: "Brisbane based Producer / MC / Songwriter Nerve has been making waves in the Australian Hip hop & Grime scene since late 2015. With two Grime EPs under his belt, including the game changing “Nightshift” which Featured Tasmania’s Wombat, Nerve has been progressing vividly and laying his foundation in the rap game

As a producer Nerve has recorded, mixed and mastered all his own projects As well as working with other artists. Nerve recently mixed and mastered the debut album of Sydneys very own ChilliniT.

His latest and most acclaimed release to date is the debut album 'Sober', which released in mid-2018. This album was almost entirely produced by Nerve himself and exhibited a large variety of sounds and tempos ranging from old-school boom-bap, to new-wave styles of lyricism and production. With no one track being the same, Nerve has proved himself to be diverse and consistent.

At only 21 years of age, Nerve is continuing to hold a strong presence within the Australian music scene, with multiple live appearances on Triple J, continuing collaboration with local artists, and his own solo releases.

With his Debut album reaching over +350, 000 album streams on Spotify alone, Nerve has proved himself to be one of the most successful independent hip hop artists Australia has seen in 2018. With the New Year coming, nerve can only be planning bigger and better things.

in the Few years he has been Active, Nerve has supported international and local Artists such as: Method Man & Redman
Madchild
Ocean Wisdom
Snack the Ripper
Sir Spyro
Kerser
Nter
ChilliniT
TripleOne

Nerves most recent support show was with close friends and triple j locals “Triple One” on the Brisbane leg of the tour when they supported YG on his East Coast tour of Australia.

With the Australian rap scene growing more and more each year, Nerve looks to climb his way to the top, be on the look out, Nerve is coming up.
",
  date: Faker::Date.forward(23),
  user: User.all.sample,
  genre: genres.sample
)

Campaign.create(
  name: "Ollie English plays the Espy",
  address: "11 The Esplanade, St Kilda VIC 3182",
  description: "With a voice that'll stop you in your tracks, meet this week's triple j Unearthed Feature Artist - Ollie English.

The Adelaide artist has stunned everyone with his power vocals and emotional songwriting. He only really started singing after high school and used to joke around with his mates by putting on an operatic voice until one day a friend told him that he should actually give singing a real go.

Ollie's one of the winners of the triple j Unearthed The Rubens competition and will be opening up for the band this week AND jumping up on stage to sing one part of the 'Never Ever' duet.

Sold yet?

Well, if you back Ollie, you back us at the ESPY, there's only one option....buy your ticket, so this event can become a reality!
",
  date: Faker::Date.forward(23),
  user: User.all.sample,
  genre: genres.sample
)

Campaign.create(
  name: "Pridelands plays Section 8",
  address: "27-29 Tattersalls Ln, Melbourne VIC 3000",
  description: "Originally from Mount Gambier in South Australia, Pridelands relocated to Melbourne in 2014. Since then the band has shared the stage with local heavyweights the likes of Northlane, Dead Letter Circus & Hellions, released their debut EP 'Natives' in 2015, while 2016 saw them drop two singles 'Coalesce' and 'Battery City'.
Now Pridelands are set to release their second EP 'Any Colour You Desire' on May 4th. ACYD sees the band with a new line up, a new lease of life, exploring on its sound and culminating in their strongest and most cohesive song-writing to date.",
  date: Faker::Date.forward(23),
  user: User.all.sample,
  genre: genres.sample
)

Campaign.create(
  name: "Redhook plays Cherry Bar",
  address: "AC/DC La, Melbourne VIC 3000",
  description: "Screaming rap rock electro pop mutants from Sydney fighting against the forces of darkness inside our own heads & doing to genre barriers what Godzilla did to Tokyo

'Dynamic and engaging – genre synergy at its best' -- (Grace Farrell, FBI Radio)

'So cool. RedHook expertly tilt between vulnerable and furious.' - (Nastassia Baroni, Music Feeds)

'Juicy As fuck. RedHook effortlessly combine pop-sensibility with modern rock and a touch of post-hardcore. Flawlessly catchy, modern and mosh-inducing.' – (Monica Strut, Heavy Mag)

'RedHook will punch you right in the guts from the first listen.That's not only because the music possesses a relentless intensity but also thanks to the emotional depth that sticks with you.' - (Sam Murphy, Cool Accidents)",
  date: Faker::Date.forward(23),
  user: User.all.sample,
  genre: genres.sample
)

Campaign.create(
  name: "Tobiahs plays Public House",
  address: "433-435 Church St, Richmond VIC 3121",
  description: "Melbourne based producer Tobiahs, 20, combines elements of house, pop and garage to deliver his unique vision of lyric driven dance music.

Having created music since the age of 15, Tobiahs has honed his skills and sound, initially garnering attention from a series of remixes shared online. His debut single Through To You, a garage-inspired story of troubled relationships, was released in 2017 and has since amassed over one million streams on Spotify and Apple Music.
",
  date: Faker::Date.forward(23),
  user: User.all.sample,
  genre: genres.sample
)

Campaign.create(
  name: "Will Clift plays Corner Hotel Richmond",
  address: "57 Swan St, Richmond VIC 3121",
  description: " Noosa grown and Melbourne owned, Will Clift is not your average singer songwriter. His versatility, musical ability and passion is what makes his music unique. For the last 14 years, this lad has been busy on the rugby field leading him into the world of pro rugby union but now also taking the leap on to the quick paced and ever-changing Music scene with his latest single 'For You'.

Explicitly delivering smooth soul melodies destined for summer chillout sessions, ‘For You’ specifically will give you those chills as the sun sets on a hot summer day. It definitely is those silky vocals and the last-minute addition of live strings that producer Julian Steel brought to the table that complete the song.

‘For You’ was written after a road trip to Split Milk Festival in 2017, it pens a story of forbidden love and touches on a personal conflict between commitment and heart break.

“Haven’t had the best luck with relationships, honestly it was my fear of commitment and a mental tug of war that lead me to rethink my embedded perceptions and consider all the what if’s”

Will has spent the past 13 years mastering his craft in notable live music venues, charity events and city events. Such as the Night Cat, the Brunswick Hotel and the Carols on Kings 2014 ( in front of over 10,000 people.)

Will is currently writing new material whilst on the lookout for his new musical project.

With his inspirations from the likes of D’Angelo and Tom Misch, Will is creating a concoction of warm and sentimental sounds, paving the way for his very own style of soulful R’n’B to melt hearts all over globe.

There will be two versions of ‘For You’ out October 25th, along with an acoustic session video, filmed live from his Brunswick backyard with the company of a few good mates.
",
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


puts "Creating Ticket Categories..."
5.times do
  TicketCategory.create(name: "Regular", price_cents: 10000,  campaign: Campaign.all.sample, quantity: rand(1..100), available_tickets: rand(1..50), description: Faker::Lorem.paragraphs(3))
end

5.times do
  TicketCategory.create(name: "VIP", price_cents: 30000, campaign: Campaign.all.sample, quantity: rand(1..100), available_tickets: rand(1..50), description: Faker::Lorem.paragraphs(3))
end

puts "Creating Tickets..."
10.times do
  Ticket.create(order: Order.all.sample, ticket_category: TicketCategory.all.sample)
end

puts "Done!"


