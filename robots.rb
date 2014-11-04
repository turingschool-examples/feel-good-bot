class Robot
  
  attr_reader :name, :favorite_food
  
  def initialize(name, favorite_food)
    @name = name
    @serial_number = rand(10000)
    @favorite_food = favorite_food
  end
  
  def selfie_url
    "http://robohash.org/#{@serial_number}.png"
  end
  
end