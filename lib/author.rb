class Author
  attr_accessor :title, :post, :name, :author
 
  def initialize(name)
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

class Artist
  attr_accessor :name, :song
 
  def initialize(name)
    @name = name
  end
 
  def add_song(song)
    song.artist = self
  end
 
def add_song_by_name(name)
    song = Song.new(name)
    add_song(song)
end
  
  def songs
    Song.all.select {|song| song.artist == self}
  end
  
  def self.song_count
    Song.all.count
  end
  
end