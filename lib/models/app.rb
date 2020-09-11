$prompt = TTY::Prompt.new

def start
    p "Enter the crate to start digging"
    userChoices
end

def userChoices
    choices = %w(Artist User)
    user_choice = $prompt.select("Are you logging in as an artist or a user?", choices)
    if user_choice == "Artist"
        artistLogin
    else
        userLogin
    end
end