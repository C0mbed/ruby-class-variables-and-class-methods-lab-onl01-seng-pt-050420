class Song
  attr_accessor :name, :artist, :genre 
  
  @@count = 0
  @@artists=[]
  @@genres=[]
  @@genre_count = {}
  
  
  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@genres << @genre
    @@artists << @artist
    @@genre_count[@artist] = 1 
  end
  
  def self.count
    @@count
  end
  
  def self.artists
    @unique_artists = @@artists.uniq
    @unique_artists
  end
  
  def self.genres
    @unique_genre = @@genres.uniq
    @unique_genre
  end
  
  def self.genre_count
    puts @@genre_count
    if @@genres_count.length > 0
       @@genres.count do |genre, count|
         if genre == @genre
           @@genres_count[genre]=count += 1
         else
           @@genre_count[genre] = 1
         end
    else
      @@genre_count[@genre] = 1
    end
      @@genre_count
    end
  end
  
  def self.artist_count
    
  end
  
end