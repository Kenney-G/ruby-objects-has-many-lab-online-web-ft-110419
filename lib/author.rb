class Author
  attr_accessor :title, :name, 
 
  def initialize(name)
    @name = name
  end
 
  def add_post(title)
    post.author = self
  end
 
def add_post_by_title(title)
    post = Post.new(title)
    add_post(title)
end
  
  def posts
    Post.all.select {|post| post.author == author}
  end
  
  def self.post_count
    Post.all.count
  end
  
end
