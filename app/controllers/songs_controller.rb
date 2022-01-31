class SongsController < ApplicationController

    #index page
    get '/songs' do
      @songs = Song.all
      erb :'songs/index'
    end

    #read individual song
    get '/songs/:slug' do 

      @song = Song.find_by_slug(params[:slug])
    
      erb :'songs/show'
    end



end