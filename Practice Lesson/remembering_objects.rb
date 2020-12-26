
class Song
  
 @@all = []
 
  attr_accessor :name
 
  def initialize(name)
    @name = name
    @@all << self.name
  end
  
  def self.all
    @@all
  end
end

hotline_bling = Song.new("Hotline Bling")
thriller = Song.new("Thriller")
ninety_nine_problems = Song.new("99 Problems")
purple_rain = Song.new("Purple Rain")

puts Song.all