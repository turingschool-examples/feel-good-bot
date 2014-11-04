require 'bundler'
Bundler.require

class FeelGoodBot < Sinatra::Base
  enable :inline_templates

  get '/' do
    @adjective = ["nice", "alright", "decent"].shuffle.first
    erb :index
  end

  run! if app_file == $0
end

__END__

@@ index
<h1>Good morning!</h1>
<p>You look <%= @adjective %> today.</p>
