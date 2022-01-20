require 'sinatra/base'
require_relative 'lib/opponent'
require_relative 'lib/turn'

class RockPaperScissors < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/name' do 
    session[:player_name] = params[:name]
    redirect '/play'
  end 

  get '/play' do
    @turn = turn.new(session)
    erb :play 
  end

  post '/play' do 
    session[:player_shape] = params[:shape]
    session[:opponent_shape] = Opponent.new.shape
    redirect '/play'
  end 

  run! if app_file == $0
end
