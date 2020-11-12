class Dog
  attr_accessor :owner, :mood
  attr_reader :name

  @@all = []
  
  def initialize(name, owner, mood = "nervous")
    @name, @owner, @mood = name, owner, mood
    @@all << self
  end

  def self.all
    @@all
  end
end