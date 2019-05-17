class Artist

    @@all =[]

    attr_accessor :name
    
    def initialize(name)
        @name = name
        self.save
    end

    def add_song(song)
        song.artist = self
    end 

    def songs
        Song.all.select{ |song| song.artist == self }
    end

    def self.find_or_create_by_name(name)
        artist = Artist.all.select{ |artist| artist.name == name}[0]

        unless artist.nil?
            artist
        else
            Artist.new(name)
        end
    end

    def self.all
        @@all
    end

    def save
        @@all << self
    end

    def print_songs
        self.songs.each{ |song| puts song.name }
    end

end
