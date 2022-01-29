class ArtistsController < ApplicationController

    get '/genres' do 
        erb :'genres/index'
    end

end