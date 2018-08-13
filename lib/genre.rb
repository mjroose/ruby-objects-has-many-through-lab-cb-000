class Genre
  attr_reader :name
  @@all = []

  def initialize(name)
    @name = name
    self.class.all << self
  end

  def self.all
    @@all
  end

  def new_song(title, artist) #add a new song and make song aware of its genre
    Song.new(title, artist, self)
  end

  def songs #use select to return a list of all of the genre's songs
    Song.all.select do |song|
      song.genre == self
    end
  end

  def artists #returns a list of the artist of each song in the genre
    self.songs.collect do |song|
      song.artist
    end
  end
end
