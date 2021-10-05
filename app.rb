require 'sinatra'
require 'sinatra/reloader'

class App < Sinatra::Base
  
  configure :development do
    register Sinatra::Reloader
  end

  get '/test' do
    'Testing infrastructure working!'
  end

  get '/' do
    erb(:index)
  end

  post '/result' do
    'Success'
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end