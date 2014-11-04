require 'bundler'
Bundler.require

class FeelGoodBot < Sinatra::Base
  get '/' do
    %Q{
      <h1>Good morning!</h1>
      <p>You look nice today.</p>
    }
  end

  run! if app_file == $0
end
