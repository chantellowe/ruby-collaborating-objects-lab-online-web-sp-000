class Song
 attr_accessor :name
 attr_reader :artist
  
  def initialize(name)
    @name = name
    @artist = nil
    @@all << self
  end

  @@all = []

  def self.all
    @@all
  end

  def artist=(artist)
    @artist = artist
    artist.add_song(self) unless artist.songs.include?(self)
  end
  
  def artist_name=(name)
    self.artist= Artist.find_or_create_by_name(name)
    self.Artist.add_song(self)
  end

  def self.new_by_filename(file)
    song_name = file.split(" - ")[1]
    artist = file.split(" - ")[0]
    song = self.new(song_name)
    song.artist_name = artist 
    song
  end

end