class Artist < ActiveRecord::Base
    has_many :songs 
    has_many :genres, through: :songs

    def slug
        #you can use .parameterize method or split and join combination.
        name.to_s.downcase.gsub(" ","-")
    end

    def self.find_by_slug(slug)
        Artist.all.find {|artist| artist.slug == slug }
    end

    def self.deparametrize(slug) #turns into a slug
        slug.split("-").join(" ").titleize #first letter capital
    end
end



