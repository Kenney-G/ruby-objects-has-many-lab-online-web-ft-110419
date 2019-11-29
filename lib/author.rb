class Author
  attr_accessor :title, :post
 
  def initialize(title)
    @title = title
  end
 
  def add_song(post)
    post.artist = self
  end
 
def add_post_by_name(title)
    post = Post.new(title)
    add_post(post)
end
  
  def post
    Post.all.select {|post| post.artist == self}
  end
  
  def self.post_count
    Post.all.count
  end
  
end