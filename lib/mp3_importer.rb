class MP3Importer

  attr_accessor :path
  
  def initialize(path)
    @path = path
  end

  def files
    @files = []
    file = Dir.entries
  end
  
  def import 
    
  end

end