class Artist
  attr_accessor :name
  def initialize(name)
    @name = name
  end
  
  def songs
    Song.all
  end
  
  def add_song(song)
    song.artist = self   #this song parameter is generated by Song class
  end
  
  def add_song_by_name(song)
    Song.new(song).artist = self
  end
  
  def self.song_count
    Song.all.length
  end
end