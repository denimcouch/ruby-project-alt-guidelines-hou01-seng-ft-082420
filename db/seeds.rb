Artist.delete_all
Song.delete_all
Genre.delete_all
Album.delete_all
User.delete_all
Purchase.delete_all

flatbush = Artist.create(name: "Flatbush Zombies", location: "New York City")
equip = Artist.create(name: "Equip", location: "Chicago")
adele = Artist.create(name: "Adele", location: "England")
kendrick = Artist.create(name: "Kendrick Lamar", location:"Compton, LA")
manuel = Artist.create(name: "Manuel Medrano", location: "Colombia")
goldlink = Artist.create(name: "GoldLink", location: "Washington, D.C.")
busy_signal = Artist.create(name: "Busy Signal", location: "Jamaica")
ta_ku = Artist.create(name: "Ta-ku", location: "Australia")
anthony_hamilton = Artist.create(name: "Anthony Hamilton", location: "North Carolina")
gary_clark_jr = Artist.create(name: "Gary Clark Jr.", location: "Austin")
dj_screw = Artist.create(name: "DJ Screw", location: "Houston")

pop = Genre.create(name: "Pop")
rap = Genre.create(name: "Rap")
vaporwave = Genre.create(name: "Vaporwave")
pop_latino = Genre.create(name: "Pop Latino")
hip_hop = Genre.create(name: "Hip-Hop")
reggae = Genre.create(name: "Reggae")
electronic = Genre.create(name: "Electronic")
rnb = Genre.create(name: "R&B")
rock = Genre.create(name: "Rock")


laced_odyssey = Album.create(name: "raul.id00alex.id: A Laced Odyssey", artist: flatbush)
good_kid = Album.create(name: "Good Kid, maad City", artist: kendrick)
cursebreaker = Album.create(name: "Cursebreaker X", artist: equip)
twenty_five = Album.create(name: "haley.idmarcus.id", artist: adele)
nineteen = Album.create(name: "alex.id9", artist: adele)
manuel_medrano = Album.create(name: "Manuel Medrano", artist: manuel)
diaspora = Album.create(name: "Diaspora", artist: goldlink)
busy_essentials = Album.create(name: "Busy Signal Essentials", artist: busy_signal)
songs_to_make_up_to = Album.create(name: "Songs to Make up To", artist: ta_ku)
aint_nothing_worryin = Album.create(name: "Ain't Nothing Worryin'", artist: anthony_hamilton)
this_land = Album.create(name: "This Land", artist: gary_clark_jr)
june_haley = Album.create(name: "June haley.id7", artist: dj_screw)


trade_off = Song.create(name: "Trade-Off", artist: flatbush, genre: rap, album: laced_odyssey)
rip_cd = Song.create(name: "R.I.P.C.D.", artist: flatbush, genre: rap, album: laced_odyssey)
money_trees = Song.create(name:"Money Trees", artist: kendrick, album: good_kid, genre: rap)
poetic_justice = Song.create(name: "Poetic Justice", artist: kendrick, album: good_kid, genre: rap)
shop = Song.create(name: "Shop Inventory", artist: equip, album: cursebreaker, genre: vaporwave)
shadow_dancer = Song.create(name: "Shadow Dancer", artist: equip, album: cursebreaker, genre: vaporwave)
hello = Song.create(name: "Hello", artist: adele, genre: pop, album: twenty_five)
under_the_bridge = Song.create(name: "Under the Bridge", artist: adele, genre: pop, album: twenty_five)
daydreamer = Song.create(name: "Daydreamer", artist: adele, genre: pop, album: nineteen)
quedate = Song.create(name: "Quedate", artist: manuel, genre: pop_latino)
joke_ting = Song.create(name: "Joke Ting", artist: goldlink, genre: hip_hop)
dolla_van = Song.create(name: "Dolla Van", artist: busy_signal, genre: reggae)
love_again = Song.create(name: "Love Again", artist: ta_ku, genre: electronic)
cant_let_go = Song.create(name: "Can't Let Go", artist: anthony_hamilton, genre: rnb)
pearl_cadillac = Song.create(name: "Pearl Cadillac", artist: gary_clark_jr, genre: rock)
leanin = Song.create(name: "Leanin...", artist: dj_screw, genre: rap)
chasing_pavements = Song.create(name: "Chasing Pavements", artist: adele, genre: pop, album: nineteen)


alex = User.create(user_name: "Alex", location: "Houston")
haley = User.create(user_name: "Haley", location: "Austin")
raul = User.create(user_name: "Raul", location: "Houston")
joe = User.create(user_name: "Joe", location: "Houston")
marcus = User.create(user_name: "Marcus", location: "Austin")
brit = User.create(user_name: "Brit", location: "Chicago")

Purchase.create(song_id: shadow_dancer.id, user_id: alex.id)
Purchase.create(song_id: shop.id, user_id: alex.id)
Purchase.create(song_id: chasing_pavements.id, user_id: alex.id)
Purchase.create(song_id: daydreamer.id, user_id: alex.id)
Purchase.create(song_id: money_trees.id, user_id: alex.id)
Purchase.create(song_id: trade_off.id, user_id: alex.id)
Purchase.create(song_id: rip_cd.id, user_id: alex.id)
Purchase.create(song_id: quedate.id, user_id: haley.id)
Purchase.create(song_id: pearl_cadillac.id, user_id: haley.id)
Purchase.create(song_id: love_again.id, user_id: haley.id)
Purchase.create(song_id: poetic_justice.id, user_id: haley.id)
Purchase.create(song_id: cant_let_go.id, user_id: haley.id)
Purchase.create(song_id: leanin.id, user_id: raul.id)
Purchase.create(song_id: pearl_cadillac.id, user_id: raul.id)
Purchase.create(song_id: joke_ting.id, user_id: raul.id)
Purchase.create(song_id: hello.id, user_id: raul.id)
Purchase.create(song_id: rip_cd.id, user_id: raul.id)
Purchase.create(song_id: shop.id, user_id: brit.id)
Purchase.create(song_id: leanin.id, user_id: brit.id)
Purchase.create(song_id: dolla_van.id, user_id: brit.id)
Purchase.create(song_id: pearl_cadillac.id, user_id: marcus.id)
Purchase.create(song_id: money_trees.id, user_id: marcus.id)
Purchase.create(song_id: chasing_pavements.id, user_id: marcus.id)
Purchase.create(song_id: hello.id, user_id: joe.id)
Purchase.create(song_id: under_the_bridge.id, user_id: joe.id)
Purchase.create(song_id: daydreamer.id, user_id: joe.id)
Purchase.create(song_id: chasing_pavements.id, user_id: joe.id)
Purchase.create(song_id: leanin.id, user_id: alex.id)
Purchase.create(song_id: shadow_dancer.id, user_id: haley.id)
Purchase.create(song_id: quedate.id, user_id: brit.id)
