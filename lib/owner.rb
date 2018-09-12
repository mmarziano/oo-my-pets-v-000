

class Owner 
  attr_accessor :name, :pets
  attr_reader :species
  
  @@all = []
  
  def initialize(name)
    @name = name
    @species = "human"
    @@all << self
    @pets = {fishes: [], cats: [], dogs: []}
  end
  
  def self.all
    @@all
  end 
  
  def self.reset_all
    @@all.clear 
  end
   
  def self.count 
    @@all.count 
  end 
  
  def say_species
    return "I am a #{@species}."
  end
 
  def pets 
    @pets
  end
  
  def buy_cat(name) 
    @pets[:cats] << Cat.new(name)
  end 
  
  def buy_fish(name) 
    @pets[:fishes] << Fish.new(name)
  end 
  
  def buy_dog(name) 
    @pets[:dogs] << Dog.new(name)
  end 
 
  def walk_dogs 
    pets[:dogs].map {|dog| dog.mood = "happy"}
  end 
  
  def play_with_cats
    pets[:cats].map {|cat| cat.mood = "happy"}
  end
  
  def feed_fish
    pets[:fishes].map {|fish| fish.mood = "happy"}
  end
  
  def sell_pets
    @pets[:dogs].map {|dog| dog.mood = "nervous"}
    @pets[:cats].map {|cat| cat.mood = "nervous"}
    @pets[:fishes].map {|fish| fish.mood = "nervous"}
    @pets.clear
  end 
  
  def list_pets
    @pets.
    
  end 
end 