class MP3Importer
    attr_reader :path

    def initialize(path)
        @path = path 
    end

    def files
        filenames = Dir.children(self.path)
    end

    def import
        self.files.each do |filename|
            Song.new_by_filename(filename)
        end
    end
    

end
