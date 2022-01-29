class Artist < ActiveRecord::Base
    has_many :song_genres
    has_many :songs 
    has_many :genres, through: :songs

    def slug
        #you can use .parameterize method or split and join combination.
        self.name.parameterize
    end

    def self.find_by_slug(slug)
       name =  self.deparametrize(slug)
       self.find_by(name: name)

    end

    def self.deparametrize(slug) #turns into a slug
        slug.split("-").join(" ").titleize #first letter capital
    end
end



