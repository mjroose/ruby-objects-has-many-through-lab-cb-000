class Song
  attr_reader :title, :artist, :genre
  @@all = []

  def initialize(title, artist, genre)
    @title = title
    @artist = artist
    @genre = genre
    self.class.all << self
  end

  def self.all
    @@all
  end
end
