class MP3Importer

attr_reader :path

def initialize(test_music_path)
  @test_music_path = test_music_path
end

def files
      @files = Dir.glob("#{@path}/*.mp3").collect{ |file| file.gsub("#{@path}/", "") }
    end

end



 
end
 
class MP3Importer
  def import(list_of_filenames)
    list_of_filenames.each{ |filename| Song.new_by_filename(filename) }
  end
end