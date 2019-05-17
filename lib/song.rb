class Song
    attr_accessor :artist, :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    #def artist=(name)
        #if (self.artist.nil?)
          #self.artist = Artist.new(name)
        #else
          #self.artist.name = name
        #end
    #end

    def self.all
        @@all
    end

end
