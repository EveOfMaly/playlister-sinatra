class Slugify 

    def self.add_slug_instance
        Song.all.each {|song|instance_variable_set("@slug", song.name.parameterize)}
        Artist.all.each {|artist|instance_variable_set("@slug", artist.name.parameterize)}
        Genre.all.each {|genre|instance_variable_set("@slug", genre.name.parameterize)}
    end

   
    # def slug
    #     #you can use .parameterize method or split and join combination.
    #     self.name.parameterize
    # end

    # def self.find_by_slug(slug)
    #     self.find_by(name: name)
    # end

    def self.deparametrize(slug) #turns into a slug
        slug.split("-").join(" ").titleize #first letter capital
    end


end