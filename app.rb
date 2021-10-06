require 'sinatra'
require 'sinatra/reloader'
require './lib/person'

class App < Sinatra::Base
  
  configure :development do
    register Sinatra::Reloader
  end

  enable :sessions

  get '/test' do
    'Testing infrastructure working!'
  end

  get '/' do
    erb(:index)
  end

  post '/details' do
    name = params[:name]
    day = params[:day]
    month = params[:month]
    session[:person] = Person.new(name, day, month)
    redirect to('/result')
  end

  get '/result' do
    @person = session[:person]
    @birthday_today = @person.birthday_today?
    @days_until_birthday = @person.days_until_birthday
    @name = @person.name
    erb(:result)
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end