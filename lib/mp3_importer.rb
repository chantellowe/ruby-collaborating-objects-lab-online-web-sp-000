class MP3Importer

  attr_accessor :path
  
  def initialize(path)
    @path = path
  end

  def files
    @files = []
    file = Dir.entries(@path)
    file.each do |file|
      if file.include?("mp3")
        @files << files
      end
    end
  end
  
  def import 
    
  end

end