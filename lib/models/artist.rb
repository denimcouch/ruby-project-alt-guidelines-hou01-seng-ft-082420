class Artist < ActiveRecord::Base
    has_many :songs
    has_many :genres, through: :songs
    has_many :albums
#------------create methods-------#
    def release_album(name)
        Album.create(name: name, artist: self)
    end
    def release_song(name, genre, album=nil)
        Song.create(name:name, genre: genre, artist: self)
    end

#------------read methods-----------#    
    def album_names
        self.albums.collect{|album| album.name}
    end
    def album_length
        self.albums.collect{|album| album.songs.size}
    end
    def album_track_names
        self.albums.collect{|album|}
    end
    def song_names
        self.songs.collect{|song| song.name}
    end
#-----------update methods-----------#
    def add_song_to_album(song_name, album_name)
         song = self.songs.find_by(name: song_name)
         album = self.albums.find_by(name: album_name) 
         album.songs.push(song)
    end
#-----------destroy methods-----------#
    def remove_album(name)
        album = self.albums.find_by(name: name)
        album.delete.save
    end
    def remove_song(name)
        song = self.songs.find_by(name: name)
        song.delete.save
    end

end