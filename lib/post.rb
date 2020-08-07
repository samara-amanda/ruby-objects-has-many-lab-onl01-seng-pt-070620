class Post
  attr_accessor :title
  @@all = []

  def initialize(title)
    @title = title
    save
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

  def author
    Author.all.select {|author| author.post == self }
  end
end
