require 'bundler'
Bundler.require

class FeelGoodBot < Sinatra::Base
  get '/' do
    "You look nice today."
  end

  run! if app_file == $0
end
