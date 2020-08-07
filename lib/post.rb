class Post
  attr_accessor :title
  @@all = []

  def initialize(title)
    @title = title
    @all << selff
  end

  def self.all
    @@all
  end
end
