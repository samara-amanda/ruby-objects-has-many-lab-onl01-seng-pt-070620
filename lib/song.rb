class Song
  attr_accessor :name, :artist
  @@all = []


  def initialize(name, artist)
    @name = name
    @artist = artist
    save
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end
end
