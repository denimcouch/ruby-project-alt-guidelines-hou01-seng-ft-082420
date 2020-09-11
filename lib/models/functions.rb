# require_relative 'artist'
# require_relative 'user'
#$current_artist = return_artist || new_artist
#=========== artist functions ===============
def artistLogin
    #Artist.connection
    user_name = $prompt.ask("What's your name?")

        return_artist = Artist.all.each do |artist|
            if artist.name == user_name
                p "Welcome back, #{user_name}!"
                self.whatNextArtist
            end
        end
    new_artist = Artist.create(name: user_name)
    self.whatNextArtist
end


def whatNextArtist#($current_artist)

    choices = %w(Manage_albums Manage_songs Ditch_old_material Go_back)
    to_do = $prompt.select("You got in, now what?", choices)
    if to_do == "Manage_albums"
        $current_artist.manageAlbums
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
            release_album(input)
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
            self.release_song(input)
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


#=========== User functions ===========

def userLogin
    User.connection
    current_user = nil
    user_name = $prompt.ask("Enter your Username")
    User.all.each do |user|
        if user.user_name == user_name
            current_user = user
            p "Welcome back, #{user_name}!"
            whatNextUser(current_user)
        end
    end
    current_user = User.create(user_name: user_name)
    whatNextUser(current_user)
end


def whatNextUser(current_user)
    User.connection
    choices = %w(Search_for_music Manage_Music Update_info Go_back)
    to_do = $prompt.select("You got in, now what?", choices)
    if to_do == "Search_for_music"
        searchingMusic(current_user)
    elsif to_do == "Manage_Music"
        manageMusic(current_user)
    elsif to_do == "Update_info"
        updateInfo(current_user)
    else
       p  "Bye, Felicia"
        start
    end
end


def manageMusic(current_user)
    choice = %w(Purchase_a_song Delete_a_song Go_back)
            input = $prompt.select("Are you buying or deleting?", choice)
            if input == "Purchase_a_song"
                buy_song(input, current_user)
            elsif input == "Delete_a_song"
                this =$prompt.ask("Enter the song you wish to delete")
                delete_song_from_library(this, current_user)
            else
                searchMusic(current_user)
            end
end


def searchingMusic(current_user)
    choice = %w(By_name By_location By_genre Go_back)
    two = $prompt.select("You've got options here..", choice)
        if two == "By_name"
            input = $prompt.ask("Enter: artist name")
            find_artist_by_name(input)
        elsif two == "By_location"
            choices = %w(Artist_by_location Artist_in_your_city All_music_in_your_city Go_back)
            three = $prompt.select("Let's get specific", choices)
                if three == "Artist_by_location"
                    this =$prompt.ask("Where are we searching?")
                    find_artist_by_location(this)
                elsif three == "Artist_in_your_city"
                    find_artists_in_your_city(current_user)
                elsif three == "All_music_in_your_city"
                    music_in_your_city(current_user)
                else
                    searchMusic(current_user)
                end
        elsif two == "By_genre"
            choices = %w(Artist_genre Song_genre)
            three = $prompt.select("Let's get specific", choices)
                if three == "Artist_genre"
                    this =$prompt.ask("What genre are you looking for?")
                    find_artist_by_genre(this, current_user)
                elsif three == "Song_genre"
                    this = $prompt.ask("What genre are you looking for?")
                    find_songs_by_genre(this, current_user)
                else
                    p "See ya!"
                    searchMusic(current_user)
                end
        else
            searchMusic(current_user)
        end
end

def updateInfo(current_user)
    choice = %w(Change_username Change_location Go_back)
        input = $prompt.select("Are you changing your name or location?")
            if input == "Change_username"
               this = $prompt.ask("What would you like your new username to be?")
               change_user_name(this)
            elsif input == "Change_location"
                this = $prompt.ask("Where do you stay now?")
                change_location(this)
            else
                searchMusic(current_user)
            end
end