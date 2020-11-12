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
    all_cats = []
    Cat.all.each do |cat|
      cat.owner.name == Owner.name
     all_cats << cat
    end
    self.all_cats
  end




end