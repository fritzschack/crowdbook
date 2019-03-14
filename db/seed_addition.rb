genres = ["Pop", "Rock 'n' Roll", "Rap / Hip-hop Music", "Techno", "House", "Alternative / Indie (Rock)", "Trance", "Downtempo / Ambient", "Electronic", "Industrial & Gothic", "(Heavy) Metal", "Golden Age", "Punk (Rock) / (New) Wave", "Hardcore (Punk)", "Contemporary (Rock)", "Country", "Rhythm 'n' Blues (R&B)", "Gospel & Pioneers", "Blues", "Jazz", "Jamaican (Music) / Reggae", "Breakbeat", "Drum 'n' Bass / Jungle", "Hardcore (Techno)"]

jackie_bornstein_c = Campaign.create(
  name: "Jackie Bornstein plays Melbourne Recital Centre",
  address: "31 Sturt Stree Southbank VIC 3006",
  description: "Captivating singer Jackie Bornstein enchants audiences with her emotive delivery and beautiful tone. Having a passion for great jazz guitar and voice partnerships since childhood, Jackie is pleased to be sharing the stage with three of Australia’s finest guitarists: James Sherlock, Stephen Magnusson and Nathan Slater. Jackie leads her colleagues in a mixture of swing, bossa nova, neuvo cancion, pop, chanson and original songs. Featuring composers from across the globe including George Gershwin, Kurt Weill, Jimmy van Heusen, Violetta Para, Sting, Jackie Bornstein and more. The program highlights Jackie’s rich voice and versatility and the distinctive sounds of each esteemed guitarist. Presented by Melbourne Recital Centre and Jackie Bornstein.",
  date: DateTime.now + rand(16..70).days,
  user: ew,
  genre: "Jazz",
  funding_goal: 2000,
  campaign_end_date: DateTime.now + rand(5..15).days,
  current_funding_amount: 0,
)

taylor_and_silk_c = Campaign.create(
  name: "Taylor and Silk play Arkibar Cucina",
  address: "100 Dorcas Street Melbourne VIC 3205",
  description: "Taylor and Silk are a musical tapestry, vibrant, moody, passionate and versatile. They perform in the styles of Motown, trad jazz, funk, reggae steppers, second line, Cajun, blues, ska, Caribbean, Latin and soul, inspiring their own refreshing collection of standards, classics and contemporary pop tunes. Enjoy sunset happy hour with a great atmosphere and the music of Taylor and Silk, the perfect way to ease into your weekend.",
  date: DateTime.now + rand(16..70).days,
  user: ew,
  genre: "Jazz",
  funding_goal: 2000,
  campaign_end_date: DateTime.now + rand(5..15).days,
  current_funding_amount: 0,
)

jackson_four_c = Campaign.create(
  name: "Jackson Four plays Jasper's Jazz Bar",
  address: "14 Goldie Place Melbourne VIC 3000",
  description: "It's swingin' jazz grooves with Jackson Four, featuring Jon Wade on Hammond and piano, playing the songs of Mel Torme, Lou Rawls, Nat King Cole, Joe Williams, Ella Fitzgerald, Cleo Laine and many others. Jackson Four Jazz recently made their official debut on the main stage at the Eltham Jazz, Food and Wine Festival impressing the festival audience with their songs, musicianship, style and entertaining presentation. This new musical adventure features one of Australia's most talented and virtuoso Hammond organ and piano player, Jon Wade. Jon has previously performed as part of the George Golla Trio, Ed Wilson Band, National Youth Jazz Orchestra UK, as well as Musical Director for pop star Kiki Dee. Jon joins Jeff Mead on sax, Nick Mierisch on drums and band leader, Peter Jackson, on vocals and congas.",
  date: DateTime.now + rand(16..70).days,
  user: ew,
  genre: "Jazz",
  funding_goal: 5000,
  campaign_end_date: DateTime.now + rand(5..15).days,
  current_funding_amount: 0,
)

badloves_c = Campaign.create(
  name: "The Badloves play Bird's Basement",
  address: "11 Singers Lane Melbourne VIC 3000",
  description: "The Badloves are an Australian soul and RnB band formed by frontman Michael Spiby in late 1989. Famous for hits like 'Lost', 'Green Limousine', 'Caroline' and a cover of 'The Weight' with Jimmy Barnes, the band has released six albums, won two Australian Music Awards and three ARIA awards, and has worked alongside such major artists Baby Animals, Lenny Kravitz and Hall & Oates. After various reformations and a recent five-year hiatus, The Badloves are back together and sound better than ever. For this show, they will perform a set of RnB instrumentals, while the second set will feature many of their best-known hits.",
  date: DateTime.now + rand(16..70).days,
  user: ew,
  genre: "Rhythm 'n' Blues (R&B)",
  funding_goal: 3500,
  campaign_end_date: DateTime.now + rand(5..15).days,
  current_funding_amount: 0,
)

kodie_shane_c = Campaign.create(
  name: "Kodie Shane plays Provincial Hotel",
  address: "299 Brunswick Street Fitzroy VIC 3065",
  description: "Despite the playful bubblegum bounce of her breakout hit “Drip on My Walk,” Kodie Shane, the first lady (or is that matey?) of Lil Yachty’s Sailing Team, has a very cool head. Part of that can be attributed to the 19-year-old’s early exposure to the music industry — her father sang background vocals for her aunt Cherrelle of “Saturday Love” fame and a sister was in girl group Blaque — but mostly, she’s just serious about her craft. While her peers were flirting, her natural talent for melody and cadence was being primed by long days in an Atlanta studio. Those gifts, coupled with her ability to write both candy-sweet singsong rap and deeper, more emotionally sensitive songs like “Sad” are what set her apart from the swarm of new young rappers. Not to mention her confidence. “Imma knock it out the park when I hit it, Lord,” she boasts on recent standout “Start a Riot.” It’s well earned — she hasn’t struck out yet.",
  date: DateTime.now + rand(16..70).days,
  user: ew,
  genre: "Rap / Hip-hop Music",
  funding_goal: 5000,
  campaign_end_date: DateTime.now + rand(5..15).days,
  current_funding_amount: 0,
)

brockhampton_c = Campaign.create(
  name: "BROCKHAMPTON plays Fitzroy Social",
  address: "222 Brunswick Street Fitzroy VIC 3065",
  description: "BROCKHAMPTON has no patience for subtly. Their name, their song titles and their album titles — each is written in caps. Founded in the early-aughts via a rap message board, the once geographically separated, 14-member posse are both a boyband and an endlessly creative collective, featuring non-rapping members who handle art, photography and music videos. In addition to landing a reality show on Viceland, they spent 2017 sprinting the path blazed by forebears Odd Future, releasing their SATURATION trilogy and a barrage of music videos in just six months. Fronted by the charismatic Kevin Abstract, BROCKHAMPTON packs each record with clever, aggressive and sometimes nihilistic bars over beats built to soundtrack fervent mosh pits. To temper their more bellicose material, BROCKHAMPTON include softer, more vulnerable songs like “FACE” and “SUMMER,” which challenge rote rap parameters. With their fourth album, “TEAM EFFORT,” slated for release this year, they seem poised to capitalize on their ceaseless momentum.",
  date: DateTime.now + rand(16..70).days,
  user: ew,
  genre: "Rap / Hip-hop Music",
  funding_goal: 2000,
  campaign_end_date: DateTime.now + rand(5..15).days,
  current_funding_amount: 0,
)

ravyn_lenae_c = Campaign.create(
  name: "Ravyn Lenae plays Naked for Satan",
  address: "289 Brunswick Street Fitzroy VIC 3065",
  description: "Ravyn Lenae was a sophomore in high school when she made “Greetings,” an atmospheric R&B track that would later become part of her much-celebrated debut EP “Moon Shoes.” She recorded it with $300 she scraped together for studio time. By the time she was a high school senior, Lenae was signed to Atlantic Records — which reissued the album — and working with fellow Chicago peers Mick Jenkins and Noname. With her soulful 2017 follow-up, “Midnight Moonlight,” the cosmos-obsessed artist established herself as a dynamic musical force, debuting a new collection of dreamy, electronic tracks that compelled comparisons to Kelela and Erykah Badu. An Aquarian, Lenae will be celebrating her birthday month with a new album, “Crush,” produced by hip-hop producer (and Kendrick Lamar collaborator) Steve Lacy — and she hasn’t yet left her teen years behind.",
  date: DateTime.now + rand(16..70).days,
  user: ew,
  genre: "Rhythm 'n' Blues (R&B)",
  funding_goal: 3000,
  campaign_end_date: DateTime.now + rand(5..15).days,
  current_funding_amount: 0,
)
