class Song
  
attr_accessor :name, :artist, :title

@@all = []

def initialize(name)
  @name = name
  @@all << self
end  

def artist_name=(name)
  self.artist = Artist.find_or_create_by_name(name)
  #self.artist.add_song(self)
end

def self.all
  @@all
end

def self.new_by_filename(filename)
  song = self.new(title)
  song.title = filename.split(" - ")[1]
  song.artist = filename.split(" - ")[0]
  song
end

end