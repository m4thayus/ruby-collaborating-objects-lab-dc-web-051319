class Song
    attr_accessor :artist, :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end
    
    def self.new_by_filename(filename)
        metadata = File.basename(filename, ".mp3").split(" - ")
        song = Song.new(metadata[1])
        song.artist = Artist.find_or_create_by_name(metadata[0])
        song
    end

end
