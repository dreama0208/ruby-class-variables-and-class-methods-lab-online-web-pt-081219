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
      i = 0
      h_genre = Hash[@@genres.uniq.collect { |e| [e, 0]}]
      h_genre.each { |e, v|
        if e == genres[i]
          v += 1
          i += 1
        end
      }
    end

    def self.artist_count

    end
end
