class MP3Importer

  attr_accessor :path
  
  def initialize(path)
    @path = path
  end

  def files
    Dir.entries(path).select {|entry| entry.include?("")
  end
  
  def import 
    
  end

end