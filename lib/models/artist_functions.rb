
def artistLogin
    Artist.connection
    user_name = $prompt.ask("What's your name?")
        Artist.all.each do |artist|
            if artist.name == user_name
                p "Welcome back, #{user_name}!"
                self.whatNextArtist
            end
        end
    Artist.create(name: user_name)
    self.whatNextArtist
end


def whatNextArtist

    choices = %w(Manage_albums Manage_songs Ditch_old_material Go_back)
    to_do = $prompt.select("You got in, now what?", choices)
    if to_do == "Manage_albums"
        self.manageAlbums
    elsif to_do == "Manage_songs"
        self.manageSongs
    elsif to_do == "Ditch_old_material"
        self.ditchOldMaterial
   else 
        p "Forget something?"
        start
    end
end


def manageAlbums
    # include Mods
    Artist.connection
    choice = %w(Release_an_album All_album_names Album_size Album_song_names Go_back)
        one = $prompt.select("Whatchu gone do...", choice)
        if one == "Release_an_album"
            input = $prompt.ask("What's your album name?")
            self.release_album(input)
        elsif one == "All_album_names"
            self.album_names
        elsif one == "Album_size"
            self.album_length
        elsif one == "Album_song_names"
            self.song_names
        else 
            p 'SKRRRrrrt'
            self.whatNextArtist
        end
end


def manageSongs
    Artist.connection
    choice = %w(Release_a_song Add_a_song_to_an_album Go_back)
        one = $prompt.select("Make your choice...", choice)
        if one == "Release_a_song"
           input = $prompt.ask("Enter: song_name, genre, album -if applicable")
            Artist.release_song(input)
        elsif one == "Add_a_song_to_an_album"
            input = $prompt.ask("Enter: song_name, album_name")
            self.add_song_to_album(input)
        else
            p 'Back that thing up'
            self.whatNextArtist
        end
end


def ditchOldMaterial
    Artist.connection
    choice = %w(Ditch_an_album Ditch_a_song Go_back)
        one = $prompt.select("Make you wanna leave the one ya with, start a new relationship...with who?", choice)
        if one == "Ditch_an_album"
           input = $prompt.ask("Enter the album name you want to remove")
            self.remove_album(input)
        elsif one == "Ditch_a_song"
            input = $prompt.ask("Enter the song name you want to remove")
            self.remove_song(input)
        else
            p 'Chau!'
            self.whatNextArtist
        end
end