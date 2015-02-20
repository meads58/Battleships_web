require 'sinatra/base'
require_relative './game'
require_relative './player'
require_relative './board'
require_relative './cell'
require_relative './water'
require_relative './ship'

class Battleships < Sinatra::Base

  set :views, Proc.new { File.join(root, "..", "views") }
  enable :sessions

  game = Game.new



  get '/' do
    erb :home
  end

  get '/start_game' do
      erb :start
  end

  post '/start_game' do
    if player = params[:name].empty?
      erb :home
    else
     player = Player.new(params[:name])
     session[:me] = player
     ship = Ship.submarine
     session[:ship] = ship
     board = Board.new({:size => 2, :content => Cell})
     session[:board] = board
     board.place(ship, :A1)
     erb :play
   end
  end

  get '/shoot' do
    erb :play
  end

  post '/shoot' do
    shot = params[:shot]
    session[:board].shoot_at(shot.to_sym)
    redirect '/shoot'
    #erb :play
  end


  # start the server if ruby file executed directly
  run! if app_file == $0
end
