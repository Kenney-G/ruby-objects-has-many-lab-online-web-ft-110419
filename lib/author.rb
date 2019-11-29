class Author
  attr_accessor :title, :author, :name
 
  def initialize(name)
    @title = title
    @name = name
  end
 
  def add_song(post)
    post.artist = self
  end
 
def add_post_by_name(name)
    post = Post.new(name)
    add_post(name)
end
  
  def posts
    Post.all.select {|post| post.author == author}
  end
  
  def self.post_count
    Post.all.count
  end
  
end