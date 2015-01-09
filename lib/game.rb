require 'sinatra/base'

class RockPaperScissors < Sinatra::Base
  
  enable :sessions

  get '/' do
    erb :index
  end

  post '/new' do
    @user = params[:user]
    erb :new
  end

  get '/start' do
    erb :new
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
