require 'rack-flash'

class SongsController < ApplicationController
  enable :sessions
  use Rack::Flash

    #index page
    get '/songs' do
      @songs = Song.all
      erb :'songs/index'
    end

    #new
    get "/songs/new" do 
      erb :'songs/new'
    end


     #read individual song
     get '/songs/:slug' do 

      @song = Song.find_by_slug(params[:slug])
    
      erb :'songs/show'
    end

    post '/songs' do 
      @song = Song.create(name: params[:Name])
     
      @song.artist = Artist.find_or_create_by(name: params[:artist][:name])
   
      
      @song.genre_ids =  params[:genres]

      @song.save

      flash[:message] = "Successfully created song."
      redirect to("/songs/#{@song.slug}")
    end

   
    get '/songs/:slug/edit' do 
      @song = Song.find_by_slug(params[:slug])
      
      erb :'songs/edit'
      
      
    end

    patch '/songs/:slug' do 
      @song = Song.find_by_slug(params[:slug])
      @song.update(name: params[:Name])
      @song.artist = Artist.find_or_create_by(name: params[:artist][:name])
      @song.genre_ids =  params[:genres]
      @song.save

     flash[:message] = "Successfully updated song."
     redirect to("/songs/#{@song.slug}")
    end





end