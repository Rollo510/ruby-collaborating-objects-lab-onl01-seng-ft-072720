class MP3Importer

attr_reader :path

def initialize(test_music_path)
  @test_music_path = test_music_path
end

def files
      @files = Dir.glob("#{@path}/*.mp3").collect{ |file| file.gsub("#{@path}/", "") }
    end





end