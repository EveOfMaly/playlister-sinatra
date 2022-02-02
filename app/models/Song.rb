class Song < ActiveRecord::Base
    belongs_to :artist
    has_many :song_genres
    has_many :genres, through: :song_genres


    def slug
        # self.name.downcase.split(" ").join("-")

        name.to_s.downcase.gsub(" ","-")
        # self.name.to_s.parameterize
    end

    def self.find_by_slug(slug)
       Song.all.find {|song| song.slug == slug }
    end

    def self.deparametrize(slug) #turns into anti slug
        slug.split("-").join(" ").titleize #first letter capital
    end

  
end


