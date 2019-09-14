class Artist
	
	attr_accessor :name
	attr_reader :song
	@@all = []

	def initialize(name)
		@name = name
		@songs = []
		@@all << self
	end

	def songs
		@songs
	end

	def add_song(song)
		@songs << song
	end

	def self.all
		@@all
	end

	def self.find_or_create_by_name(name)
		if @@all.find do |artist|
			artist.name == name
			end
		else
			new_artist = Artist.new(name)
		end
	end

	def print_songs
	  @songs.each do |song|
	      puts song.name
	  end
	end

end