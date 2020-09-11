class Song < ActiveRecord::Base
    belongs_to :artist
    belongs_to :genre
    belongs_to :album
    has_many :purchases
    has_many :users, through: :purchases
end