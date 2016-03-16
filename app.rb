require 'sinatra'
require './lib/player'

class Battle < Sinatra::Base
  get '/' do
    erb(:index)
  end

  post '/names' do
    $player_1 = Player.new(params[:player_1_name])
    $player_2 = Player.new(params[:player_2_name])
    # session[:player_1_name] = params[:player_1_name]
    # session[:player_2_name] = params[:player_2_name]
    redirect '/play'
  end

  get '/play' do
    @name1 = $player_1.name # session[:player_1_name]
    @name2 = $player_2.name # session[:player_2_name]
    erb(:play)
  end

  get '/attack' do
    @name1 = $player_1.name
    @name2 = $player_2.name
    erb(:attack)
  end

  run! if app_file == $PROGRAM_NAME
end
