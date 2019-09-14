class Artist
	
	attr_accessor :name
	#attr_reader :songs
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
		@@all.find do |artist|
			if artist.name == name
				artist
			else
				new_artist = Artist.new(name)
			end
		end
	end

	def print_songs
	  @songs.each do |songs|
	      puts song.name
	  end
	end

end