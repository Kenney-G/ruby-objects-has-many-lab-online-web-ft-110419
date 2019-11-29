class Post
  attr_accessor :title, :author, :all
 
  @@all = []

  def initialize(title)
    @title = title
    @author = author
    save
  end
 
  def save
    @@all << self
  end
 
  def self.all
    @@all
  end
end