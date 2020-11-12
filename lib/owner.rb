require 'pry'
class Owner

  attr_reader :name, :species

  @@all = []

  def initialize(name, species = "human")
    @name, @species = name, species
    @@all << self
  end
  
  def say_species
    "I am a #{species}."
  end

  def self.all
    @@all
  end

  def self.count
    @@all.length
  end

  def self.reset_all
    @@all.clear
  end

  # 1. @owner.cats searches through all cats that have the @owner associated and returns them
  def cats
     Cat.all.select {|cat| cat.owner == self}
  end
  
  def dogs
     Dog.all.select {|dog| dog.owner == self}
  end

  def buy_cat(cat_name)
    Cat.all.select do |cat|
      cat.name == cat_name
      cat.owner = self
    end
  end
  




end
# binding.pry