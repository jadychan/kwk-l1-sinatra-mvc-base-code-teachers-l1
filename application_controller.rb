require 'bundler'
require './models/model'
Bundler.require

class MyApp < Sinatra::Base

  get '/' do
    return erb :index
  end

  post '/fortune' do
    @the_fortune=get_fortune
    @the_user=params[:user]
    return erb :results
  end

end
