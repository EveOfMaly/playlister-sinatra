class SongsController < ApplicationController

    #index page
    get '/songs' do
      @songs = Song.all

      erb :'songs/index'
    end

    get '/songs/:slug' do 
      name = params[:slug]
      binding.pry
      @song = Song.find_by(name: params[])
      erb :'songs/show'
    end



end