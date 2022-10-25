class Song

    attr_accessor :name, :artist, :genre
    @@count = 0

    @@genres = []
    @@artists = []

    @@artist_count = {}
    @@genre_count = {}

    def initialize(name, artist, genre)
        @@count += 1
        @name = name
        @artist = artist
        @genre = genre 

        @@genres << genre
        @@artists << artist
    end

    def self.count
        @@count      
    end

    def self.artists
        @@artists.uniq
    end

    def self.genres
        @@genres.uniq
    end

    def self.artist_count
        @@artists.tally
    end

    def self.genre_count
        @@genres.tally
    end

end