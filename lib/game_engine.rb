require 'sinatra/base'

class RockPaperScissors < Sinatra::Base
  
  enable :sessions

  get '/' do
    erb :index
  end

  post '/new' do
    @player = params[:player]
    erb :new
  end

  get '/start' do
    erb :new
  end

  get '/processing' do
    @user = params[:player]
    @pick = params[:pick]
    @computer_pick = [:rock]
    erb :processing
  end

  post '/processing' do
    erb :win
  end

  

  # start the server if ruby file executed directly
  run! if app_file == $0
end
