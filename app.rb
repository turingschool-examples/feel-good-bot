require 'bundler'
Bundler.require

class FeelGoodBot < Sinatra::Base
  get '/' do
    @adjective = ["nice", "alright", "decent"].shuffle.first
    erb %Q{
      <h1>Good morning!</h1>
      <p>You look <%= @adjective %> today.</p>
    }
  end

  run! if app_file == $0
end
