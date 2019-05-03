class Genre 

  attr_reader :name
  
  def initialize(name)
    @name = name 
    @@all << self 
  end
  
  @@all = []
  
  def self.all
    @@all 
  end
  
  def songs 
    Song.all.select{ |song| song.genre == self}
  end
  
  def artists
    self.songs.map { |song| song.artist}
  end
  
end