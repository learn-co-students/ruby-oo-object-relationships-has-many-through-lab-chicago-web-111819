class Artist
    attr_accessor :name
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
        # iterate over this artist's songs
        # and extract the genre from each one
        # and put it into an array we'll return
        songs.collect do |song|
            song.genre
        end
    end
end