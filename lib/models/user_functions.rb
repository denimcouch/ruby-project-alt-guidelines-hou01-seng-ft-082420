def userLogin
    User.connection
    user_name = $prompt.ask("Enter your Username")
    User.all.each do |user|
        if user.name == user_name
            p "Welcome back, #{user_name}!"
            self.whatNextUser
        end
    end
    User.create(name: user_name)
    self.whatNextUser
end


def whatNextUser
    User.connection
    choices = %w(Search_for_music Manage_Music Ditch_old_material Go_back)
    to_do = $prompt.select("You got in, now what?", choices)
    if to_do == "Search_for_music"
        searchMusic
    elsif to_do == "Manage_Music"
        manageMusic
    elsif to_do == "Ditch_old_material"
        ditchIt
    else
       p  "Bye, Felicia"
        start
    end
end


def searchMusic

end


def manageMusic

end


def ditchIt

end