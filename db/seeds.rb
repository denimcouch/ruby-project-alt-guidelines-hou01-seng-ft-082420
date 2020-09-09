Artist.delete_all
Song.delete_all
Genre.delete_all
Album.delete_all
#User.delete_all

flatbush = Artist.create(name: "Flatbush Zombies", location: "New York City")
equip = Artist.create(name: "Equip", location: "Chicago")
adele = Artist.create(name: "Adele", location: "England")
kendrick = Artist.create(name: "Kendrick Lamar", location:"Compton, LA")

pop = Genre.create(name: "Pop")
rap = Genre.create(name: "Rap")
vaporwave = Genre.create(name: "Vaporwave")

laced_odyssey = Album.create(name: "3001: A Laced Odyssey", artist: flatbush)
good_kid = Album.create(name: "Good Kid, maad City", artist: kendrick)
cursebreaker = Album.create(name: "Cursebreaker X", artist: equip)
twenty_five = Album.create(name: "25", artist: adele)
nineteen = Album.create(name: "19", artist: adele)

trade_off = Song.create(name: "Trade-Off", artist: flatbush, genre: rap, album: laced_odyssey)
rip_cd = Song.create(name: "R.I.P.C.D.", artist: flatbush, genre: rap, album: laced_odyssey)
money_trees = Song.create(name:"Money Trees", artist: kendrick, album: good_kid, genre: rap)
poetic_justice = Song.create(name: "Poetic Justice", artist: kendrick, album: good_kid, genre: rap)
shop = Song.create(name: "Shop Inventory", artist: equip, album: cursebreaker, genre: vaporwave)
shadow_dancer = Song.create(name: "Shadow Dancer", artist: equip, album: cursebreaker, genre: vaporwave)
hello = Song.create(name: "Hello", artist: adele, genre: pop, album: twenty_five)
under_the_bridge = Song.create(name: "Under the Bridge", artist: adele, genre: pop, album: twenty_five)
daydreamer = Song.create(name: "Daydreamer", artist: adele, genre: pop, album: nineteen)
chasing_pavements = Song.create(name: "Chasing Pavements", artist: adele, genre: pop, album: nineteen)


# alex = User.create(user_name: "Alex", location: "Houston")
# haley = User.create(user_name: "Haley", location: "Austin")