Artist.delete_all
Song.delete_all
Genre.delete_all
#User.delete_all

drake = Artist.create(name: "Drake")
sonny_and_cher = Artist.create(name: "Sonny and Cher")
adele = Artist.create(name: "Adele", location: "England")

pop = Genre.create(name: "Pop")
rap = Genre.create(name: "Rap")

hotline_bling = Song.create(name:"Hotline Bling", artist: drake, genre: rap)
i_got_you = Song.create(name: "I Got You")
hello = Song.create(name: "Hello", artist: adele, genre: pop)
under_the_bridge = Song.create(name: "Under the Bridge", artist: adele, genre: pop)
daydreamer = Song.create(name: "Daydreamer", artist: adele, genre: pop)


# alex = User.create(user_name: "Alex", location: "Houston")
# haley = User.create(user_name: "Haley", location: "Austin")