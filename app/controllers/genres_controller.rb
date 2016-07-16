class GenresController < ApplicationController

 get '/genre' do
    @all_genres = Genre.all
    erb :'/genre/index'
  end

  get '/genre/:name' do
    @genre = genre.find_by(name: params[:name])
    @tweets = @genre.tweets
    erb :'/genre/show'
  end

 # get '/types/:slug' do
 #   @type = Type.find_by_slug(params[:slug])
 #   #@users = @type.users
 #   #@tweets = @type.tweets
 #   erb :'/type/show'
 # end
end