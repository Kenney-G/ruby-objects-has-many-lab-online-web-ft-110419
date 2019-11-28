class Artist
  attr_accessor :name, :song
 
  def initialize(name)
    @name = name
  end
 
  def add_song(song)
    song.artist = self
  end
 
 def add_song_by_name(name)
   song.name Song.name
 end
 
  def songs
    Song.all.select {|song| song.artist == self}
  end
end