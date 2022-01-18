require 'sinatra/base'
require_relative 'lib/opponent'

class RockPaperScissors < Sinatra::Base
  enable :sessions
  get '/' do
    erb :index
  end

  post '/name' do 
    session[:name] = params[:name]
    redirect '/play'
  end 

  get '/play' do
    @name = session[:name]
    @option = session[:option]
    @opponent_option = session[:opponent_option]
    erb :play 
  end

  post '/play' do 
    session[:option] = params[:option]
    session[:opponent_option] = Opponent.new.option
    redirect '/play'
  end 

  run! if app_file == $0
end
