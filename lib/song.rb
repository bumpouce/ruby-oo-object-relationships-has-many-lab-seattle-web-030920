require 'pry'

class Song

    @@all = []

    attr_reader :artist, :name

    def initialize (name)
        @name = name
        @@all << self
    end

    def artist=(artist)
        @artist = artist
    end

    def artist_name
        self.artist ?  self.artist.name : nil 
    end

    def self.all
        @@all
    end

end