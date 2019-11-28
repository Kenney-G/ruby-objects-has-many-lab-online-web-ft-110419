class Song
  attr_accessor :artist, :name
 
  @@all = []

  def initialize(name)
    @name = name
    @artist = artist
    save
  end
 
 def name
   name = self
  def save
    @@all << self
  end
 
  def self.all
    @@all
  end
end