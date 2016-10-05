require 'sinatra'
require 'sinatra/reloader'
require 'active_record'
require 'pg'
require 'pry'

require_relative 'db/connection'
require_relative 'models/pokemon'

binding.pry

get "/pokemon" do
  @pokemon = Pokemon.all
  erb :"pokemon/index"
end
