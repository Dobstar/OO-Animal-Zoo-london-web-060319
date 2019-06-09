class Animal

    attr_reader :species, :nickname
    attr_accessor :weight
    
    @@all = []

    def initialize(nickname, weight, species)
        @nickname = nickname
        @weight = weight
        @species = species
        @@all << self
    end 

    def self.all
        @@all
    end 

    def animals
        Zoo.all.select {|zoo| zoo.animal == self}
    end 

    def self.find_by_species(species)
        Zoo.all.select {|zoo| zoo.animal.species == species}
    end 
end
