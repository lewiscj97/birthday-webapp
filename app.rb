require 'sinatra'
require 'sinatra/reloader'

class App < Sinatra::Base
  set :sessions, true

  get '/' do
    'Hello World!'
  end
end