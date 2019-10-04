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
    @@artists << artist
    @@genres << genre
  end
  
  def self.count # just for class - self 
    @@count
  end
  
  def self.artists
    @@artists.uniq!
  end
  
   def self.genres
    @@genres.uniq! 
  end
  
  def self.genre_count
    genre_count = Hash.new(0) # or array ????
    @@genres.each do |sng|
      genre_count[sng] += 1
    end
    genre_count
  end
  
  def self.artist_count
    artist_count = 0
    artist_count = Hash.new
    @@artists.each do |art|
      artist_count[art] += 1
  end
  artist_count
 end
 
end

# difference between unique and uniq!
# @ or @@ using, why
# did we use self because it is already under initialize with @@
