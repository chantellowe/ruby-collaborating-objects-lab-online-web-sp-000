class MP3Importer

  attr_accessor :path
  
  def initialization(path)
    @path = path
  end

  def files
    @files = Dir.glob("#{@path}/*.mp3").collect{ |file| file.gsub("#{@path}/", "") }
  end

  def import
    @files.each { |f| Song.new_by_filename(f) }
  end

end