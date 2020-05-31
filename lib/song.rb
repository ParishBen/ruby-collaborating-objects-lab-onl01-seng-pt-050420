class Song 
  attr_accessor :name, :artist 
 @@all = []
  def initialize(name)
    @name=name
    @@all << self
 end 
 def self.all 
    @@all 
  end
  def print_songs
    Song.all.select {|song| song.artist == self}
  end
  #def add_song(song)
   # song.artist = self
    #@@all << song
#end
def self.new_by_filename(filename)
  filename.split(" - ")[1]
end
def artist_name(name)
 if Artist.all.detect do |artist| if artist.name == name
  artist
else 
  self.artist = name
end
end
end
end
end
#import method: Song.new_by_filename(some_filename). This will send us to the Song class, specifically Song.new_by_filename and handle the creation of Song instances and their associated Artist instances.