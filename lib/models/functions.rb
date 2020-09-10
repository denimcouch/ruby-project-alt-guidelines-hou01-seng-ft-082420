def userChoices
    choices = %w(Artist User)
    user_choice = $prompt.select("Are you logging in as an artist or a user?", choices)
    if user_choice == "Artist"
        artistLogin
    else
        userLogin
    end
end

def userLogin
    userName = $prompt.ask("Enter your Username")
    password = $prompt.mask("dime ya password")
    user = User.create(user_name: userName)
    #add next method with the user passed as an argument
end

def artistLogin
    userName = $prompt.ask("Enter your name")
    password = $prompt.mask("dime ya password")
    artist = Artist.create(artist: artist)
    #add next method with the user passed as an argument
end