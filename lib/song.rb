class Song
  attr_accessor :artist, :title
 
  @@all = []
 
  def initialize(name)
    @name = name
    @artist = artist
    save
  end
 
  def save
    @@all << self
  end
 
  def self.all
    @@all
  end
end