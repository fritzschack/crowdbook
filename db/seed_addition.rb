genres = ["Pop", "Rock 'n' Roll", "Rap / Hip-hop Music", "Techno", "House", "Alternative / Indie (Rock)", "Trance", "Downtempo / Ambient", "Electronic", "Industrial & Gothic", "(Heavy) Metal", "Golden Age", "Punk (Rock) / (New) Wave", "Hardcore (Punk)", "Contemporary (Rock)", "Country", "Rhythm 'n' Blues (R&B)", "Gospel & Pioneers", "Blues", "Jazz", "Jamaican (Music) / Reggae", "Breakbeat", "Drum 'n' Bass / Jungle", "Hardcore (Techno)"]

jackie_bornstein = Musician.create(
  name: "Jackie Bornstein",
  description: "",
)

jackie_bornstein_c = Campaign.create(
  name: "Jackie Bornstein plays Melbourne Recital Centre",
  address: "31 Sturt Stree Southbank, Melbourne, VIC 3006",
  description: "Captivating singer Jackie Bornstein enchants audiences with her emotive delivery and beautiful tone. Having a passion for great jazz guitar and voice partnerships since childhood, Jackie is pleased to be sharing the stage with three of Australia’s finest guitarists: James Sherlock, Stephen Magnusson and Nathan Slater. Jackie leads her colleagues in a mixture of swing, bossa nova, neuvo cancion, pop, chanson and original songs. Featuring composers from across the globe including George Gershwin, Kurt Weill, Jimmy van Heusen, Violetta Para, Sting, Jackie Bornstein and more. The program highlights Jackie’s rich voice and versatility and the distinctive sounds of each esteemed guitarist. Presented by Melbourne Recital Centre and Jackie Bornstein.",
  date: DateTime.now + rand(16..70).days,
  user: ew,
  genre: "Jazz",
  funding_goal: 2000,
  campaign_end_date: DateTime.now + rand(5..15).days,
  current_funding_amount: 900,
)

Performance.create(
  campaign: jackie_bornstein_c,
  musician: jackie_bornstein,
)

Photo.create(
  campaign: jackie_bornstein_c,
  remote_image_url_url: "https://res.cloudinary.com/cjward/image/upload/v1552611858/about.jpg",
)

jackie_bornstein_tg = TicketCategory.create(
  name: "General Admission",
  campaign: jackie_bornstein_c,
  quantity: 100,
  available_tickets: 90,
  description: "Grants Entry",
  price_cents: 2000
)

jackie_bornstein_tv = TicketCategory.create(
  name: "VIP",
  campaign: jackie_bornstein_c ,
  quantity: 20,
  available_tickets:13,
  description: "Premium Package including table, drinks and table service",
  price_cents: 10000,
)

adora_o = Order.create(
  user: yb_o
  )

7.times do
  Ticket.create(
    order: yb_o,
    ticket_category: jackie_bornstein_tv,
  )
end

10.times do
  Ticket.create(
    order: yb_o,
    ticket_category: jackie_bornstein_tg,
  )
end

taylor_and_silk = Musician.create(
  name: "Taylor and Silk",
  description: "",
)

taylor_and_silk_c = Campaign.create(
  name: "Taylor and Silk play Arkibar Cucina",
  address: "100 Dorcas Street, Melbourne, VIC 3205",
  description: "Taylor and Silk are a musical tapestry, vibrant, moody, passionate and versatile. They perform in the styles of Motown, trad jazz, funk, reggae steppers, second line, Cajun, blues, ska, Caribbean, Latin and soul, inspiring their own refreshing collection of standards, classics and contemporary pop tunes. Enjoy sunset happy hour with a great atmosphere and the music of Taylor and Silk, the perfect way to ease into your weekend.",
  date: DateTime.now + rand(16..70).days,
  user: ew,
  genre: "Jazz",
  funding_goal: 2000,
  campaign_end_date: DateTime.now + rand(5..15).days,
  current_funding_amount: 800,
)

Performance.create(
  campaign: taylor_and_silk_c,
  musician: taylor_and_silk,
)

Photo.create(
  campaign: taylor_and_silk_c,
  remote_image_url_url: "https://res.cloudinary.com/cjward/image/upload/v1552611760/taylor_silk.jpg",
)

taylor_and_silk_tg = TicketCategory.create(
  name: "General Admission",
  campaign: taylor_and_silk_c,
  quantity: 100,
  available_tickets: 85,
  description: "Grants Entry",
  price_cents: 2000
)

taylor_and_silk_tv = TicketCategory.create(
  name: "VIP",
  campaign: taylor_and_silk_c ,
  quantity: 20,
  available_tickets:15,
  description: "Premium Package including table, drinks and table service",
  price_cents: 10000,
)

5.times do
  Ticket.create(
    order: yb_o,
    ticket_category: taylor_and_silk_tv,
  )
end

15.times do
  Ticket.create(
    order: yb_o,
    ticket_category: taylor_and_silk_tg,
  )
end

jackson_four = Musician.create(
  name: "Jackson Four",
  description: "",
)

jackson_four_c = Campaign.create(
  name: "Jackson Four plays Jasper's Jazz Bar",
  address: "14 Goldie Place, Melbourne VIC, Melbourne, 3000",
  description: "It's swingin' jazz grooves with Jackson Four, featuring Jon Wade on Hammond and piano, playing the songs of Mel Torme, Lou Rawls, Nat King Cole, Joe Williams, Ella Fitzgerald, Cleo Laine and many others. Jackson Four Jazz recently made their official debut on the main stage at the Eltham Jazz, Food and Wine Festival impressing the festival audience with their songs, musicianship, style and entertaining presentation. This new musical adventure features one of Australia's most talented and virtuoso Hammond organ and piano player, Jon Wade. Jon has previously performed as part of the George Golla Trio, Ed Wilson Band, National Youth Jazz Orchestra UK, as well as Musical Director for pop star Kiki Dee. Jon joins Jeff Mead on sax, Nick Mierisch on drums and band leader, Peter Jackson, on vocals and congas.",
  date: DateTime.now + rand(16..70).days,
  user: ew,
  genre: "Jazz",
  funding_goal: 4000,
  campaign_end_date: DateTime.now + rand(5..15).days,
  current_funding_amount: 3000,
)

Performance.create(
  campaign: jackson_four_c,
  musician: jackson_four,
)

Photo.create(
  campaign: jackson_four_c,
  remote_image_url_url: "https://res.cloudinary.com/cjward/image/upload/v1552611799/jackson_4.jpg",
)

Photo.create(
  campaign: jackson_four_c,
  remote_image_url_url: "https://res.cloudinary.com/cjward/image/upload/v1552611798/jackson_four.jpg",
)


jackson_four_tg = TicketCategory.create(
  name: "General Admission",
  campaign: jackson_four_c,
  quantity: 100,
  available_tickets: 50,
  description: "Grants Entry",
  price_cents: 2000
)

jackson_four_tv = TicketCategory.create(
  name: "VIP",
  campaign: jackson_four_c,
  quantity: 20,
  available_tickets:0,
  description: "Premium Package including table, drinks and table service",
  price_cents: 10000,
)

20.times do
  Ticket.create(
    order: yb_o,
    ticket_category: jackson_four_tv,
  )
end

50.times do
  Ticket.create(
    order: yb_o,
    ticket_category: jackson_four_tg,
  )
end

badloves = Musician.create(
  name: "The Badloves",
  description: "",
)

badloves_c = Campaign.create(
  name: "The Badloves play Bird's Basement",
  address: "11 Singers Lane Melbourne VIC, Melbourne, 3000",
  description: "The Badloves are an Australian soul and RnB band formed by frontman Michael Spiby in late 1989. Famous for hits like 'Lost', 'Green Limousine', 'Caroline' and a cover of 'The Weight' with Jimmy Barnes, the band has released six albums, won two Australian Music Awards and three ARIA awards, and has worked alongside such major artists Baby Animals, Lenny Kravitz and Hall & Oates. After various reformations and a recent five-year hiatus, The Badloves are back together and sound better than ever. For this show, they will perform a set of RnB instrumentals, while the second set will feature many of their best-known hits.",
  date: DateTime.now + rand(16..70).days,
  user: ew,
  genre: "Rhythm 'n' Blues (R&B)",
  funding_goal: 3500,
  campaign_end_date: DateTime.now + rand(5..15).days,
  current_funding_amount: 2100,
)

Performance.create(
  campaign: badloves_c,
  musician: badloves,
)

Photo.create(
  campaign: badloves_c,
  remote_image_url_url: "https://res.cloudinary.com/cjward/image/upload/v1552611761/the_badloves.jpg",
)

Photo.create(
  campaign: badloves_c,
  remote_image_url_url: "https://res.cloudinary.com/cjward/image/upload/v1552611761/badloves.jpg",
)


badloves_tg = TicketCategory.create(
  name: "General Admission",
  campaign: badloves_c,
  quantity: 100,
  available_tickets: 70,
  description: "Grants Entry",
  price_cents: 2000
)

badloves_tv = TicketCategory.create(
  name: "VIP",
  campaign: badloves_c,
  quantity: 20,
  available_tickets:5,
  description: "Premium Package including table, drinks and table service",
  price_cents: 10000,
)

15.times do
  Ticket.create(
    order: yb_o,
    ticket_category: badloves_tv,
  )
end

30.times do
  Ticket.create(
    order: yb_o,
    ticket_category: badloves_tg,
  )
end

kodie_shane = Musician.create(
  name: "Kodie Shane",
  description: "",
)

kodie_shane_c = Campaign.create(
  name: "Kodie Shane plays Provincial Hotel",
  address: "299 Brunswick Street Fitzroy, Melbourne, VIC 3065",
  description: "Despite the playful bubblegum bounce of her breakout hit “Drip on My Walk,” Kodie Shane, the first lady (or is that matey?) of Lil Yachty’s Sailing Team, has a very cool head. Part of that can be attributed to the 19-year-old’s early exposure to the music industry — her father sang background vocals for her aunt Cherrelle of “Saturday Love” fame and a sister was in girl group Blaque — but mostly, she’s just serious about her craft. While her peers were flirting, her natural talent for melody and cadence was being primed by long days in an Atlanta studio. Those gifts, coupled with her ability to write both candy-sweet singsong rap and deeper, more emotionally sensitive songs like “Sad” are what set her apart from the swarm of new young rappers. Not to mention her confidence. “Imma knock it out the park when I hit it, Lord,” she boasts on recent standout “Start a Riot.” It’s well earned — she hasn’t struck out yet.",
  date: DateTime.now + rand(16..70).days,
  user: ew,
  genre: "Rap / Hip-hop Music",
  funding_goal: 5000,
  campaign_end_date: DateTime.now + rand(5..15).days,
  current_funding_amount: 3200,
)

Performance.create(
  campaign: kodie_shane_c,
  musician: kodie_shane,
)

Photo.create(
  campaign: kodie_shane_c,
  remote_image_url_url: "https://res.cloudinary.com/cjward/image/upload/v1552611762/kodieshane.jpg",
)


kodie_shane_tg = TicketCategory.create(
  name: "General Admission",
  campaign: kodie_shane_c,
  quantity: 100,
  available_tickets: 70,
  description: "Grants Entry",
  price_cents: 4000
)

kodie_shane_tv = TicketCategory.create(
  name: "VIP",
  campaign: kodie_shane_c,
  quantity: 20,
  available_tickets:10,
  description: "Premium Package including table, drinks and table service",
  price_cents: 20000,
)

10.times do
  Ticket.create(
    order: yb_o,
    ticket_category: kodie_shane_tv,
  )
end

30.times do
  Ticket.create(
    order: yb_o,
    ticket_category: kodie_shane_tg,
  )
end


brockhampton = Musician.create(
  name: "Brockhampton",
  description: "",
)


brockhampton_c = Campaign.create(
  name: "Brockhampton plays Fitzroy Social",
  address: "222 Brunswick Street Fitzroy, Melbourne, VIC 3065",
  description: "BROCKHAMPTON has no patience for subtly. Their name, their song titles and their album titles — each is written in caps. Founded in the early-aughts via a rap message board, the once geographically separated, 14-member posse are both a boyband and an endlessly creative collective, featuring non-rapping members who handle art, photography and music videos. In addition to landing a reality show on Viceland, they spent 2017 sprinting the path blazed by forebears Odd Future, releasing their SATURATION trilogy and a barrage of music videos in just six months. Fronted by the charismatic Kevin Abstract, BROCKHAMPTON packs each record with clever, aggressive and sometimes nihilistic bars over beats built to soundtrack fervent mosh pits. To temper their more bellicose material, BROCKHAMPTON include softer, more vulnerable songs like “FACE” and “SUMMER,” which challenge rote rap parameters. With their fourth album, “TEAM EFFORT,” slated for release this year, they seem poised to capitalize on their ceaseless momentum.",
  date: DateTime.now + rand(16..70).days,
  user: ew,
  genre: "Rap / Hip-hop Music",
  funding_goal: 2000,
  campaign_end_date: DateTime.now + rand(5..15).days,
  current_funding_amount: 2700,
)

Performance.create(
  campaign: brockhampton_c,
  musician: brockhampton,
)

Photo.create(
  campaign: brockhampton_c,
  remote_image_url_url: "https://res.cloudinary.com/cjward/image/upload/v1552611762/brockhampton.jpg",
)


brockhampton_tg = TicketCategory.create(
  name: "General Admission",
  campaign: brockhampton_c,
  quantity: 100,
  available_tickets: 50,
  description: "Grants Entry",
  price_cents: 3000
)

brockhampton_tv = TicketCategory.create(
  name: "VIP",
  campaign: brockhampton_c,
  quantity: 20,
  available_tickets:16,
  description: "Premium Package including table, drinks and table service",
  price_cents: 30000,
)

4.times do
  Ticket.create(
    order: yb_o,
    ticket_category: brockhampton_tv,
  )
end

50.times do
  Ticket.create(
    order: yb_o,
    ticket_category: brockhampton_tg,
  )
end

ravyn_lenae = Musician.create(
  name: "Ravyn Lenae",
  description: "",
)

ravyn_lenae_c = Campaign.create(
  name: "Ravyn Lenae plays Naked for Satan",
  address: "289 Brunswick Street Fitzroy, Melbourne, VIC 3065",
  description: "Ravyn Lenae was a sophomore in high school when she made “Greetings,” an atmospheric R&B track that would later become part of her much-celebrated debut EP “Moon Shoes.” She recorded it with $300 she scraped together for studio time. By the time she was a high school senior, Lenae was signed to Atlantic Records — which reissued the album — and working with fellow Chicago peers Mick Jenkins and Noname. With her soulful 2017 follow-up, “Midnight Moonlight,” the cosmos-obsessed artist established herself as a dynamic musical force, debuting a new collection of dreamy, electronic tracks that compelled comparisons to Kelela and Erykah Badu. An Aquarian, Lenae will be celebrating her birthday month with a new album, “Crush,” produced by hip-hop producer (and Kendrick Lamar collaborator) Steve Lacy — and she hasn’t yet left her teen years behind.",
  date: DateTime.now + rand(16..70).days,
  user: ew,
  genre: "Rhythm 'n' Blues (R&B)",
  funding_goal: 3000,
  campaign_end_date: DateTime.now + rand(5..15).days,
  current_funding_amount: 2500,
)


Performance.create(
  campaign: ravyn_lenae_c,
  musician: ravyn_lenae,
)

Photo.create(
  campaign: ravyn_lenae_c,
  remote_image_url_url: "https://res.cloudinary.com/cjward/image/upload/v1552611993/ravy_leane.jpg",
)

Photo.create(
  campaign: ravyn_lenae_c,
  remote_image_url_url: "https://res.cloudinary.com/cjward/image/upload/v1552611984/new_headerbg_mobile.jpg",
)


ravyn_lenae_tg = TicketCategory.create(
  name: "General Admission",
  campaign: ravyn_lenae_c,
  quantity: 100,
  available_tickets: 70,
  description: "Grants Entry",
  price_cents: 5000
)

ravyn_lenae_tv = TicketCategory.create(
  name: "VIP",
  campaign: ravyn_lenae_c,
  quantity: 20,
  available_tickets:18,
  description: "Premium Package including table, drinks and table service",
  price_cents: 50000,
)

2.times do
  Ticket.create(
    order: yb_o,
    ticket_category: ravyn_lenae_tv,
  )
end

30.times do
  Ticket.create(
    order: yb_o,
    ticket_category: ravyn_lenae_tg,
  )
end

kenny_beats = Musician.create(
  name: "Kenny Beats",
  description: "",
)

kenny_beats_c = Campaign.create(
  name: "Ravyn Lenae plays The Tote",
  address: "  71 Johnston Street Collingwood VIC 3066, Melbourne, VIC 3065",
  description: "It’s hard to find a producer who had a bigger 2018 (and is poised to have an even larger 2019) than Kenny Beats. After a successful run with electronic act LOUDPVCK, Kenny spent the year returning to his hip-hop roots in a big way. With work on projects like “777,” his severely underrated collab project with Atlanta underground stalwart Key!, punk-rap bangers with DMV maven Rico Nasty and slappers on Vince Staples’ thoroughly Californian “FM!,” he’s shown a remarkable knack for tailoring his production to exactly what an artist needs. He’s a producer in the truest sense, not simply a beatmaker—he’ll only work with artists who join him in the studio, eschewing high-volume beat submissions and choosing to partner with talent he believes in to make the best music possible.

Kenny’s a hip-hop chameleon, transforming into exactly the producer each artist needs, but you can always recognize one of his beats (even before you hear his trademark “Whoa, Kenny!” tag). His drums are impeccably programmed and his melodies are infectious. Rich textural elements lurk in the background and bring character to tracks, the sign of a producer who spread his wings in the sound design-heavy world of EDM. And his 808s—can words do them justice?—they just hit harder than anyone else’s.

Kenny’s the kind of producer any artist would want—a talented artist who just wants to make special artists shine. –Alex Herrmann",
  date: DateTime.now + rand(16..70).days,
  user: kv,
  genre: "Rhythm 'n' Blues (R&B)",
  funding_goal: 5000,
  campaign_end_date: DateTime.now + rand(5..15).days,
  current_funding_amount: 5050,
)


Performance.create(
  campaign: kenny_beats_c,
  musician: kenny_beats,
)

Photo.create(
  campaign: kenny_beats_c,
  remote_image_url_url: "https://res.cloudinary.com/cjward/image/upload/v1552619429/Kenny-Beats.jpg",
)


kenny_beats_tg = TicketCategory.create(
  name: "General Admission",
  campaign: kenny_beats_c,
  quantity: 100,
  available_tickets: 65,
  description: "Grants Entry",
  price_cents: 3000
)

kenny_beats_tv = TicketCategory.create(
  name: "VIP",
  campaign: kenny_beats_c,
  quantity: 20,
  available_tickets:10,
  description: "Premium Package including table, drinks and table service",
  price_cents: 40000,
)

10.times do
  Ticket.create(
    order: yb_o,
    ticket_category: kenny_beats_tv,
  )
end

35.times do
  Ticket.create(
    order: yb_o,
    ticket_category: kenny_beats_tg,
  )
end

shake = Musician.create(
  name: "Shake",
  description: "",
)

shake_c = Campaign.create (
  name: "070 Shake plays Northcote Social Club"
  address: "301 High Street, Northcote, Melbourne, VIC 3070"
  description: "070 Shake is one of those artist that seemed to materialize out of thin air. Getting a standout feature on one of 2018’s most anticipated albums (by one of entertainments most polarizing figures) can have that effect. In reality, the 21-year-old North Bergen, New Jersey-native has been steadily making a name for herself for some time now. Shake first began posting music to Soundcloud in early 2016. Not long after, her work caught the attention GOOD Music’s president, Pusha T.
Since then, Shake has delivered her debut EP “Glitter” as well as a slew of singles. Her unusual vocal delivery and idiosyncratic tone have given the young artist somewhat of a signature sound. The outro she gifted to the “Ye” standout “Ghost Town” was given anthemic treatment during Kanye West’s Camp Flog Gnaw performance. In 2019, it would come as no surprise if more than a few artists were interested in working with Shake to see if she can strike gold again. –Jordan Coley"
  date: DateTime.now + rand(16..70).days,
  user: kv,
  genre: "Techno",
  funding_goal: 3000,
  campaign_end_date: DateTime.now + rand(5..15).days,
  current_funding_amount: 2900,
  )

Performance.create(
  campaign: shake_c,
  musician: shake,
)

Photo.create(
  campaign: shake_c,
  remote_image_url_url: "https://res.cloudinary.com/cjward/image/upload/v1552611763/070shake.png",
)


shake_tg = TicketCategory.create(
  name: "General Admission",
  campaign: shake_c,
  quantity: 100,
  available_tickets: 35,
  description: "Grants Entry",
  price_cents: 2000
)

shake_tv = TicketCategory.create(
  name: "VIP",
  campaign: shake_c,
  quantity: 20,
  available_tickets:10,
  description: "Premium Package including table, drinks and table service",
  price_cents: 20000,
)

10.times do
  Ticket.create(
    order: yb_o,
    ticket_category: shake_tv,
  )
end

45.times do
  Ticket.create(
    order: yb_o,
    ticket_category: shake_tg,
  )
end

lil_miquela = Musician.create(
  name: "Lil Miquela",
  description: "",
)

lil_miquela_c = Campaign.create (
  name: "Lil Miquela plays Workers Club"
  address: "  51 Brunswick Street Fitzroy Melbourne,VIC 3065"
  description: "In 1818 Mary Shelley authored the world’s first science fiction novel “Frankenstein” about artificial life. Misunderstood and seeking companionship and acceptance, the “monster” was tossed aside by a society not ready to embrace the idea of worlds beyond what is real. Fast forward to present day and one could argue that Lil Miquela, a 19-year-old, Brazilian-American digital beauty is the next chapter of man’s fascination with new forms of life.

The dream of Los Angeles-based startup Brud, Lil Miquela is making us all question what defines artificial intelligence. What is the difference between an influencer’s persona on Instagram and an entirely digital personality? Both are a reflection of what the curator thinks their audience wants to see. Both are a thin line between technology and art, truth and perception.

But for today’s music scene (and her 1.4 million followers on Instagram), Lil Miquela is not only real, but someone to admire and defend. She’s an activist for gender rights and voter rights. She’s a fashion icon and an Arts Contributing Editor for Dazed. She’s an aspiring musician and a loving best friend. And like the mother of science fiction before her, Lil Miquela is a fearless female leading us all into a new dimension. –Sheryl Witlen"
  date: DateTime.now + rand(16..70).days,
  user: jc,
  genre: "Techno",
  funding_goal: 5000,
  campaign_end_date: DateTime.now + rand(5..15).days,
  current_funding_amount: 3000,
  )

Performance.create(
  campaign: lil_miquela_c,
  musician: lil_miquela,
)

Photo.create(
  campaign: lil_miquela_c,
  remote_image_url_url: "https://res.cloudinary.com/cjward/image/upload/v1552611834/lil.jpg",
)


lil_miquela_tg = TicketCategory.create(
  name: "General Admission",
  campaign: lil_miquela_c,
  quantity: 100,
  available_tickets: 65,
  description: "Grants Entry",
  price_cents: 5000
)

lil_miquela_tv = TicketCategory.create(
  name: "VIP",
  campaign: kenny_beats_c,
  quantity: 20,
  available_tickets:10,
  description: "Premium Package including table, drinks and table service",
  price_cents: 50000,
)

5.times do
  Ticket.create(
    order: yb_o,
    ticket_category: lil_miquela_tv,
  )
end

50.times do
  Ticket.create(
    order: yb_o,
    ticket_category: lil_miquela_tg,
  )
end

giant_swan = Musician.create(
  name: "Giant Swan",
  description: "",
)


giant_swan_c = Campaign.create (
  name: "Giant Swan plays Boney"
  address: "  68 Little Collins Street,  Melbourne, VIC 3070"
  description: "Bristol duo Giant Swan have amassed a dedicated following over the past few years, having brought their high-octane, improvisational live sets to sweatboxes across the country. They channel the ferocious, uninhibited energy of hardcore and punk into their own mishmash of ‘techno-not-techno’, pioneering an amorphous club sound that is impossible to categorise but exhilarating to experience. Take their recent release on the cutting-edge imprint Whities, for example – a three-track pummel-to-the-gut of growling basslines, explosive drums and gnarly, distorted vocals. No doubt destined for bigger stages, now is as good as time as ever to catch them as up close and personal as possible."
  date: DateTime.now + rand(16..70).days,
  user: jc,
  genre: "Techno",
  funding_goal: 3000,
  campaign_end_date: DateTime.now + rand(5..15).days,
  current_funding_amount: 3100,
  )

Performance.create(
  campaign: giant_swan_c,
  musician: giant_swan,
)

Photo.create(
  campaign: giant_swan_c,
  remote_image_url_url: "https://res.cloudinary.com/cjward/image/upload/v1552611764/giant_swan.jpg",
)


giant_swan_tg = TicketCategory.create(
  name: "General Admission",
  campaign: giant_swan_c,
  quantity: 100,
  available_tickets: 65,
  description: "Grants Entry",
  price_cents: 2000
)

giant_swan_tv = TicketCategory.create(
  name: "VIP",
  campaign: giant_swan_c,
  quantity: 20,
  available_tickets:10,
  description: "Premium Package including table, drinks and table service",
  price_cents: 20000,
)

10.times do
  Ticket.create(
    order: yb_o,
    ticket_category: giant_swan_tv,
  )
end

55.times do
  Ticket.create(
    order: yb_o,
    ticket_category: giant_swan_tg,
  )
end

stephan_bodzin = Musician.create(
  name: "Stephan Bodzin",
  description: "",
)


stephan_bodzin_c = Campaign.create (
  name: "Stephan Bodzin plays at Revolver"
  address: "229 Chapel St, Prahran VIC 3181"
  description: "Stephan Bodzin has been a hugely influential figure within the global techno scene for years. On 19th April he joins us for a live show alongside his own curated programme at Revolvers, which features veterans of the Frankfurt electronic music scene Booka Shade (live), Fideles, special guests Mind Against and more."
  date: DateTime.now + rand(16..70).days,
  user: ss,
  genre: "Techno",
  funding_goal: 10000,
  campaign_end_date: DateTime.now + rand(5..15).days,
  current_funding_amount: 9800,
  )

Performance.create(
  campaign: stephan_bodzin_c,
  musician: stephan_bodzin,
)

Photo.create(
  campaign: stephan_bodzin_c,
  remote_image_url_url: "https://res.cloudinary.com/cjward/image/upload/v1552611762/stephan_bodzin.jpg",
)

Photo.create(
  campaign: stephan_bodzin_c,
  remote_image_url_url: "https://res.cloudinary.com/cjward/image/upload/v1552611760/stephan_bodzin_1.jpg",
)

Photo.create(
  campaign: stephan_bodzin_c,
  remote_image_url_url: "https://res.cloudinary.com/cjward/image/upload/v1552611761/stephan.jpg",
)



stephan_bodzin_tg = TicketCategory.create(
  name: "General Admission",
  campaign: stephan_bodzin_c,
  quantity: 150,
  available_tickets: 65,
  description: "Grants Entry",
  price_cents: 5000
)

stephan_bodzin_tv = TicketCategory.create(
  name: "VIP",
  campaign: stephan_bodzin_c,
  quantity: 30,
  available_tickets:10,
  description: "Premium Package including table, drinks and table service",
  price_cents: 50000,
)

10.times do
  Ticket.create(
    order: yb_o,
    ticket_category: stephan_bodzin_tv,
  )
end

96.times do
  Ticket.create(
    order: yb_o,
    ticket_category: stephan_bodzin_tg,
  )
end

solid_blake = Musician.create(
  name: "Solid Blake",
  description: "",
)

 solid_blake_c = Campaign.create (
  name: "Solid Blake plays the Gasometer"
  address: "484 Smith Street, Collingwood VIC 3066"
  description: "Copenhagen’s techno scene is buzzing right now, and Solid Blake has been at its epicentre. A founding member of the now-disbanded Apeiron Crew, the Glasgow-born DJ and producer cut her teeth playing hard-and-fast techno at the city's venues like Culture Box. Nowadays, you can catch the RBMA alumnus all over Europe, diving further into the leftfield and heavy-hitting realms of electronic music. And she’s a force to reckon with in the studio, too – her 2018 release on Berlin’s SSPB was a heady rush of shadowy, off-kilter tracks for the peak time club. Don't sleep on her next year."
  date: DateTime.now + rand(16..70).days,
  user: ss,
  genre: "Techno",
  funding_goal: 6000,
  campaign_end_date: DateTime.now + rand(5..15).days,
  current_funding_amount: 5300,
  )


 Performance.create(
  campaign: solid_blake_c,
  musician: solid_blake,
)

Photo.create(
  campaign: solid_blake_c,
  remote_image_url_url: "https://res.cloudinary.com/cjward/image/upload/v1552611761/solid_blake.jpg",
)


solid_blake_tg = TicketCategory.create(
  name: "General Admission",
  campaign: solid_blake_c,
  quantity: 100,
  available_tickets: 65,
  description: "Grants Entry",
  price_cents: 7000
)

solid_blake_tv = TicketCategory.create(
  name: "VIP",
  campaign: solid_blake_c,
  quantity: 20,
  available_tickets:10,
  description: "Premium Package including table, drinks and table service",
  price_cents: 50000,
)

5.times do
  Ticket.create(
    order: yb_o,
    ticket_category: solid_blake_tv,
  )
end

40.times do
  Ticket.create(
    order: yb_o,
    ticket_category: solid_blake_tg,
  )
end
