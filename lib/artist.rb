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
        Song.all.select { |song| song.artist == self }
    end

    def new_song(name,genre)
        Song.new(name,self,genre)
    end

    def genres
        # iterate, somehow over this artist's songs
        # and extract the genre from each song, and
        #put it into an array we'll return
        
        songs.map do |song|
            song.genre
        end
    end
end