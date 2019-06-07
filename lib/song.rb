
class Song
  attr_accessor :name, :artist, :genre
  @@count = 0
  @@genres = []
  @@artists = []

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
    temp = {}
    @@genres.each do |genre|
      temp[genre] ||= 0
      temp[genre] += 1
    end
    temp
  end

  def self.artist_count
    temp = {}
    @@artists.each do |artist|
      temp[artist] ||= 0
      temp[artist] += 1
    end
    temp
  end

end