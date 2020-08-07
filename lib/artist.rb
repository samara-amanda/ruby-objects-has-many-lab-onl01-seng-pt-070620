class Artist

  attr_accessor :name, :songs

  def initialize(name)
    @name = name
  end

  def songs
    Song.all.select {|song| song.artist == self}
  end

  def add_song(song)
    song.artist = self
  end

  def add_song_by_name(name)
    song = Song.new(name)
    add_song(song)
  end

  def song_count
    self.all.select do |artist|
      song.artist.count
    end
  end

end
