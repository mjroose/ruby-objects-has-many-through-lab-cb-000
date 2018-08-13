require 'pry'

class Artist
  attr_reader :name
  @@all = []

  def initialize(name)
    @name = name
    self.class.all << self
  end

  def self.all
    @@all
  end

  def new_song(title, genre) #add a new song and make song aware of its artist
    Song.new(title, self, genre)
  end

  def songs #use select to return a list of all of the artist's songs
    binding.pry
  end

  def genres #returns a list of the genre of each song

  end
end
