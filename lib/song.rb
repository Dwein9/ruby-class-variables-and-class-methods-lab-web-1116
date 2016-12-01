class Song

  attr_accessor :name, :artist, :genre

  @@count = 0
  @@genres = []
  @@artists = []
  @@genre_count = {}
  @@artist_count = {}

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@genres << genre
    @@artists << artist
  end

  def self.count
    @@count
  end

  def self.genres
    @@genres.uniq
  end

  def self.artists
    @@artists.uniq
  end

  def self.genre_count
    @@genres.each do |type|
      @@genre_count[type] = @@genres.count(type)
    end
    @@genre_count
  end

  def self.artist_count
    @@artists.each do |type|
      @@artist_count[type] = @@artists.count(type)
    end
    @@artist_count
  end

end
