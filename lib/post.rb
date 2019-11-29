class Post
  attr_accessor :title, :author, :all
 
  @@all = []

  def initialize(title)
    @title = title
    @author = author
    @name = name
    save
  end
 
  def save
    @@all << self
  end
 
  def self.all
    @@all
  end
end