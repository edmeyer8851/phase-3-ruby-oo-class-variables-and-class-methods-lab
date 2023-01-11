require 'pry'

class Song

    @@count = 0
    @@artists = []
    @@genres = []

    attr_accessor :name, :artist, :genre

    def initialize name, artist, genre
        @name=name
        @artist=artist
        @genre=genre
        @@count += 1
        @@artists << artist
        @@genres << genre
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
        artist_hash = Hash.new
        @@artists.each do |artist|
            if artist_hash.include?(artist)
                artist_hash[artist] += 1
            else
                artist_hash[artist] = 1
            end
        end
        artist_hash
    end

    def self.genre_count
        genre_hash = Hash.new
        @@genres.each do |genre|
            if genre_hash.include?(genre)
                genre_hash[genre] += 1
            else
                genre_hash[genre] = 1
            end
        end
        genre_hash
    end
end

# my_song1 = Song.new("Test1", "Test1", "rap")
# my_song2 = Song.new("Test2", "Test2", "rap")
# my_song3 = Song.new("Test3", "Test3", "pop")

# Song.genre_count