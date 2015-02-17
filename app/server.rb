require 'sinatra/base'

class BattleShips < Sinatra::Base
  get '/' do
    name = "meads"
    'Hello BattleShips!'
  end
  get '/hello' do
    "hello"
  end



  # start the server if ruby file executed directly
  run! if app_file == $0
end
