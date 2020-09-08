Artist.delete_all
Song.delete_all
User.delete_all

drake = Artist.create(name: "Drake")
sonny_and_cher = Artist.create(name: "Sonny and Cher")

hotline_bling = Song.create(name:"Hotline Bling")
i_got_you = Song.create(name: "I Got You")

alex = User.create(user_name: "Alex", location: "Houston")
haley = User.create(user_name: "Haley", location: "Austin")