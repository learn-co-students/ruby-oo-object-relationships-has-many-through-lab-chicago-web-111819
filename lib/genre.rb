class Genre
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
        Song.all.select {|song| song.genre == self}
    end

    def artists
        # my_songs = Song.all.select do |song|
        #     song.genre == self
        # end
        # my_songs.map do |song|
        #     song.artist
        # end
        self.songs.map do |song|
                song.artist
            end
    end

end