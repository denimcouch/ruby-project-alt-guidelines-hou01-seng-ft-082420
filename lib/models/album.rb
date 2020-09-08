class Album < ActiveRecord::Base
    has_many :songs
    has_one :artist, through: :song
    has_one :genre, through: :song
end