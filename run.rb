require_relative "lib/Animal.rb"
require_relative "lib/Zoo.rb"
require 'pry'


zoo_1 = Zoo.new("London Zoo", "London")
zoo_2 = Zoo.new("Colchester Zoo", "Colchester")
zoo_3 = Zoo.new("Bristol Zoo", "Bristol")
animal_1 = Animal.new("Cat","Fluff","2kg")
animal_2 = Animal.new("Dog","Freddie","5kg")
animal_3 = Animal.new("Rat","Whiskers","05kg")


binding.pry
puts "done"
