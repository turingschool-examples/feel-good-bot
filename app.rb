require 'bundler'
Bundler.require

require './robots'

class FeelGoodBot < Sinatra::Base
  register Sinatra::Partial
  set :partial_template_engine, :erb
  
  helpers do
    def yell(name)
      name.upcase
    end
  end
  
  get '/' do
    @adjective = ["nice", "alright", "decent"].shuffle.first
    erb :index
  end
  
  get '/mean' do
    @adjective = ["horrible", "terrible", "smelly"].shuffle.first
    erb :index
  end
  
  get '/without-layout' do
    @adjective = ["plain", "stoic", "simple"].shuffle.first
    erb :index, layout: false
  end
  
  get '/robots' do
    @robots = []
    @robots << Robot.new("Skip", "Chipotle")
    @robots << Robot.new("Cybel", "Illegal Pete's")
    @robots << Robot.new("Norbit", "WaffleUp")
    @robots << Robot.new("Spark", "Panera")
    erb :robots
  end
  
  run! if app_file == $0
end
