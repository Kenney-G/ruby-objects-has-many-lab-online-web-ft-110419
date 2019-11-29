class Post
  attr_accessor :title, :author, :all, :name
 
  @@all = []

  def initialize(title)
    @title = title
    @author = author
    @name = name
    save
  end
 
 def author_name
   author.name
 end
 
  def save
    @@all << self
  end
 
  def self.all
    @@all
  end
end