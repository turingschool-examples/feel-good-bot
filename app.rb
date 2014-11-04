require 'bundler'
Bundler.require

class FeelGoodBot < Sinatra::Base
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

  run! if app_file == $0
end
