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

  end

  def songs #use select to return a list of all of the genre's songs

  end

  def artists #returns a list of the artist of each song in the genre

  end
end