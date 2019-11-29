class Author
  attr_accessor :title, :post
 
  def initialize(name)
    @name = name
  end
 
  def add_song(post)
    post.artist = self
  end
 
def add_post_by_name(name)
    post = Post.new(name)
    add_post(post)
end
  
  def post
    Post.all.select {|post| post.artist == self}
  end
  
  def self.post_count
    Post.all.count
  end
  
end