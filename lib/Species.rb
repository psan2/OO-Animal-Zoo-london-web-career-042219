class Species
    @@all = []

    attr_reader :name

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        return @@all
    end

    def animals
        Animal.all.select{ |animal| animal.species == self }
    end


end
