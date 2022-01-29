# Add seed data here. Seed your database with `rake db:seed`
@artist = Artist.create(:name => "Taylor Swift-1") 
@artist = Artist.create(:name => "Taylor Swift-2") 
@artist = Artist.create(:name => "Taylor Swift-3") 
@artist = Artist.create(:name => "Taylor Swift-4") 
blank_space =  Song.create(:name => "Blank Space", :artist => @artist) 
song_2 =  Song.create(:name => "Song_2", :artist => @artist) 
song_3 =  Song.create(:name => "Song_2", :artist => @artist) 
pop = Genre.create(:name => "Pop")
blank_space.genre_ids = pop.id    
