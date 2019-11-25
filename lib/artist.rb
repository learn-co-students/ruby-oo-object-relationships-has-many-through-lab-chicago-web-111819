class Artist
attr_reader :name
@@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def songs
        Song.all.select {|song| song.artist == self}
    end

    def new_song(name, genre)
        Song.new(name, self, genre)
    end

    def genres
        # iterate over artists songs and extract genre from each one and return array
        songs.map {|song| song.genre}
    end
end