require 'pry'
class Artist 

attr_accessor :name,:song

@@all = [] 

def initialize(name)
 @name = name   
  @@all << self 
end 

def self.all 
  @@all 
end 

def songs 
  Song.all.select {|song| song.artist == self }
end 

def new_song(name,genre)
  Song.new(name,self,genre )
end
  
  def genres
    new = []
     Song.all.select do |x|
       new << x.genre 
     end
    new 
  end
end 