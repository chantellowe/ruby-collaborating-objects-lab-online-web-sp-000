class MP3Importer

  attr_accessor :path
  
  def initialize(path)
    @path = path
  end

  def files
    @files = []
    file = Dir.entries(@path)
    file.each do |file|
      if file.include?()
  end
  
  def import 
    
  end

end