require 'sinatra/base'

class BattleShips < Sinatra::Base
  get '/' do
    "<a href='/play'>Play</a>"
  end
  get '/play' do
    "hi"
  end



  # start the server if ruby file executed directly
  run! if app_file == $0
end
