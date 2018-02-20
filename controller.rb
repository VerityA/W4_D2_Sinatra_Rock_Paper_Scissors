require 'sinatra'
require 'sinatra/contrib/all'
require 'pry'
require_relative 'models/game.rb'

get '/' do
  erb(:welcome)
end

get '/rules' do
  erb(:rules)
end

get '/game/:hand1/:hand2' do
  game = Game.new(params[:hand1], params[:hand2])
  @game = game.play_game()
  erb(:result)
end
