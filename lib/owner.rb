require 'pry'
# require '../lib/dog.rb'
# require '../lib/cat.rb'


class Owner
  # code goes here
  attr_reader :name, :species
  
    @@all = []
    
  
  
    def initialize(name, species="human")
      @name = name
      @species = species
      @@all << self
    end

    def say_species
      
      puts "I am a #{self.species}."
      
      
    end

    def self.all
      @@all
    end

    def count
      @@all.count
      # binding.pry
      
    end

    def reset_all 
      self.all.clear
      
      # binding.pry
    end

    def cats
      
        Cat.all.select {|cat| cat.owner == self }
          # if animal.species == "cat"
          #   binding.pry
          #   return animal
          #   binding.pry
          # end
        
    end

    def dogs
      Dog.all.select {|dog| dog.owner == self}



    end
    
    
    def buy_cat(name)
       Cat.new(name, self)
       
       
       
    end

    def buy_dog(name)
      Dog.new(name, self)
    end
          
    def walk_dogs
      Dog.all.each do |dog|
        # binding.pry
        dog.mood = "happy"
        # binding.pry
      end
    end

    def feed_cats
      Cat.all.each do |cat|
        cat.mood = "happy"
      end
    end

    def sell_pets
      pets = self.dogs + self.cats
      pets.each do |pet|
        pet.mood = "nervous"
        pet.owner = nil
        # binding.pry
        # cats.mood = "nervous"
        # dogs.mood = "nervous"
      end
    end

    def list_pets
      "I have #{self.dogs.count} dog(s), and #{self.cats.count} cat(s)."
      
    
    
    
    end
end

