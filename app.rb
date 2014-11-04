require 'bundler'
Bundler.require

class FeelGoodBot < Sinatra::Base
  get '/' do
    @adjective = ["nice", "alright", "decent"].shuffle.first
    erb :index
  end

  run! if app_file == $0
end
