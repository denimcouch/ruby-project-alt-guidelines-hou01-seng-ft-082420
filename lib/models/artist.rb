class Artist < ActiveRecord::Base
    has_many :songs
    has_many :genres, through: :songs
    has_many :albums

    def release_album(name)
        Album.create(name: name, artist: self)
    end
    def release_song(name, genre=nil, album=nil)
        Song.create(name:name, artist: self)
    end

    
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

end