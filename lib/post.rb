class Post
  attr_accessor :title, :author, :all
 
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