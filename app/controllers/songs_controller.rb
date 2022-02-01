class SongsController < ApplicationController

    #index page
    get '/songs' do
      @songs = Song.all
      erb :'songs/index'
    end

    #new
    get "/songs/new" do 
      binding.pry
      erb :'songs/new'
    end


     #read individual song
     get '/songs/:slug' do 

      @song = Song.find_by_slug(params[:slug])
    
      erb :'songs/show'
    end

    post '/songs/' do 
      binding.pry
      @song = Song.create(name: params[:NAME])
      @song.save
      @artist = Artist.create(name: params[:artist])
      @artist.songs << song

      redirect to "/songs/#{@song.slug}"
    end

   
    get '/songs/:slug/edit' do 

    end





end