class Artist < ActiveRecord::Base
    has_many :songs 
    has_many :genres, through: :songs

    def slug
        #you can use .parameterize method or split and join combination.
        self.name.to_s.parameterize
    end

    def self.find_by_slug(slug)
        Artist.all.find {|artist| artist.slug == slug }
    end

    def self.deparametrize(slug) #turns into a slug
        slug.split("-").join(" ").titleize #first letter capital
    end
end



