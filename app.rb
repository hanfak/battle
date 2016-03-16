require 'sinatra'
require './lib/player'
require './lib/game'

class Battle < Sinatra::Base
  get '/' do
    erb(:index)
  end

  post '/names' do
    player_1 = Player.new(params[:player_1_name])
    player_2 = Player.new(params[:player_2_name])
    $game = Game.new(player_1, player_2)
    redirect '/play'
  end

  get '/play' do
    @game = $game
    erb(:play)
  end

  get '/attack' do
    @game = $game
    @game.attack(@game.passive)
    @game.switch_player(@game.active, @game.passive)
    # erb :attack
    redirect '/play'
  end

  run! if app_file == $PROGRAM_NAME
end
