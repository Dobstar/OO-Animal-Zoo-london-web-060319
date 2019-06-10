class Zoo
    attr_reader :name, :location 

    @@all = []

    def initialize(name, location)
        @name = name
        @location = location
        @@all << self 
    end 

    def self.all
        @@all 
    end 

    def animals
        Zoo.all.select {|zoo| zoo.animal == self}
    end 
    
    def animal_species
        animal.map {|a| a.species}.uniq
     end 

     def animal_nicknames
        animal.map {|a| a.nickname}
     end 
 
     def find_by_species(species)
        animal.all.find do |a| a.species.name == species
     end 
    end 
     def self.find_by_location(location)
         Zoo.all.select {|zoo| zoo.location == location}
     end 
end