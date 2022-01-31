class Genre < ActiveRecord::Base
    has_many :song_genres
    has_many :songs, through: :song_genres
    has_many :artists, through: :songs

    def slug
        #you can use .parameterize method or split and join combination.
        self.name.parameterize
    end

    def self.find_by_slug(slug)
        Genre.all.find {|genre| genre.slug == slug }
    end

    def self.deparametrize(slug) #turns into a regular
        slug.split("-").join(" ").titleize #first letter capital
    end

end