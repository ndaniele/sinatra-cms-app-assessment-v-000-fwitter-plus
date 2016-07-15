class TypesController < ApplicationController

 get '/types' do
    @all_types = Type.all
    erb :'/type/index'
  end

  get '/types/:slug' do
    @type = Type.find_by_slug(params[:slug])
    #@users = @type.users
    #@tweets = @type.tweets
    erb :'/type/show'
  end
end