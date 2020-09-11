class Album < ActiveRecord::Base
    has_many :songs
    belongs_to :artist
    has_many :purchases
    has_many :users, through: :purchases
end