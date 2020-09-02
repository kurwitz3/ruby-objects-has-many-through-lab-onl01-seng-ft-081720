class Genre 
  attr_accessor :name,:artist,:song 
  @@all = []
  def initialize(name)
    @name = name 
    @@all << self 
  end 
  def self.all 
    @@all
  end
  def songs 
    Song.all.select do |x|
      x.genre == self 
end
end 
def artists 
  Song.all.select do |x|
    binding.pry 
    x.artist == self
  
end 
end 
end 