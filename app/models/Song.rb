class Song < ActiveRecord::Base
    has_many :song_genres

    belongs_to :artist
    has_many :genres, through: :song_genres
end



#Artist has multiple songs and multiple genres
#Genre have multiple artist and songs

