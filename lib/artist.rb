class Artist
  attr_accessor :name, :song, :song_count
 
  def initialize(name)
    @name = name
    @song_count = song_count
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
  
  def song_count
    @soung_count = soung_count
    song_count = Song.all.count
  end
  
end