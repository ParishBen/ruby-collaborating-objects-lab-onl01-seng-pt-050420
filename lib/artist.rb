class Artist 
  attr_accessor :name, :songs
  @@all=[]
  def initialize(name)
    @name = name 
    save
  end
  def self.all 
    @@all 
  end
  def add_song(song)
    song.artist = self
    @@all << song
end
 def songs
   Song.all.select {|song| song.artist == self}
 end
 def self.find_or_create_by_name(name)
   if self.all.detect do |artist| if artist.name == name
      puts artist
  else Artist.new(name)
  end
 end
end
end
  def print_songs
     Song.all.select do |song| if song.artist == self
      puts song.name
   end
  end
 end
end
class Artist
  @@all = []
  attr_accessor :name, :songs

  def initialize(name)
    @name = name
    save
  end

  def self.all
    @@all    
  end

  def add_song(song)
    song.artist = self
  end

  def songs
    Song.all.select {|song| song.artist == self}
  end

  def self.find_or_create_by_name(name)
    self.find(name) ? self.find(name) : self.new(name)
  end

  def self.find(name)
    self.all.find {|artist| artist.name == name }
  end

  def save
    @@all << self
  end

  def print_songs
    songs.each {|song| puts song.name}
  end
end