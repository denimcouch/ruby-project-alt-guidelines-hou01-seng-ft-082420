class User < ActiveRecord::Base
    has_many :purchases
    has_many :songs, through: :purchases
    #---------------create methods--------------#
    def buy_song(name)
        desired_song = Song.find_by(name: name)
        Purchase.create(song_id:desired_song.id, user_id: self.id)
        artist = Artist.find_by(id: desired_song.artist_id)
        "Thank you for purchasing #{desired_song.name} by #{artist.name}, #{self.user_name}!"
    end
    #---------------read methods----------------#
    def find_artist_by_name(name)
        Artist.all.select{|artist| artist.name == name}
    end
    def find_artist_by_location(location)
        Artist.all.select{|artist| artist.location == location}
    end
    def find_artists_in_your_city
        Artist.all.select{|artist| artist.location == self.location}
    end
    def find_artist_by_genre(genre_name)
        genre = Genre.find_by(name: genre_name)
        songs_in_genre = Song.all.select{|song| song.genre_id == genre.id}
        artist_ids = songs_in_genre.collect{|song| song.artist_id}
        artists = Artist.all.select{|artist| artist_ids.any? artist.id}
        artists.uniq
    end
    def find_songs_by_genre(genre_name)
        genre = Genre.find_by(name: genre_name)
        Song.all.select{|song| song.genre_id == genre.id}
    end
    def music_in_your_city
        local_artists = self.find_artists_in_your_city
        local_artists.collect{|artist| artist.songs}.flatten       
    end
#----------------update methods------------------#
    def change_user_name(name)
        self.user_name = name
        self.save
    end    
    def change_location(location)
        self.location = location
        self.save
    end
#----------------destroy methods-----------------#
    def delete_song_from_library(name)
        song = self.songs.find_by(name: name)
        song.delete.save
    end
end