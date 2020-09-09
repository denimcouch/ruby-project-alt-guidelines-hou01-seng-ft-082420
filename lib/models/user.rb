class User < ActiveRecord::Base
    has_many :songs
    # has_many :albums, through: :songs
    
    def find_artist_by_name(name)
        Artist.all.select{|artist| artist.name == name}
    end
    def find_artist_by_location(location)
        Artist.all.select{|artist| artist.location == location}
    end
    def find_songs_by_genre(genre_name)
        genre = Genre.all.find_by(name: genre_name)
        Song.all.select{|song| 
            #binding.pry
            song.genre_id == genre.id
        }
    end
    def find_artist_by_genre(genre_name)
        genre = Genre.all.find_by(name: genre_name)
        songs_in_genre = Song.all.select{|song| song.genre_id == genre.id}
        artist_ids = songs_in_genre.collect{|song| song.artist_id}
        artists = Artist.all.select{|artist| artist_ids.any? artist.id}
        artists.uniq
    end
end