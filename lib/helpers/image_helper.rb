require 'sinatra/base'

module Sinatra
  
  module ImageHelpers
    
    def image(filename)
      %Q{<img src="/images/#{filename.png}">}
    end
    
  end
  
  helpers ImageHelpers
end