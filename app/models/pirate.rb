class Pirate

  attr_reader :name, :weight, :height

  @@all = []

  def initialize(args)
    #binding.pry
    @name = args[:name]
    @weight = args[:weight]
    @height = args[:height]
   
    @@all << self
  end

  def self.all
    @@all
  end

end