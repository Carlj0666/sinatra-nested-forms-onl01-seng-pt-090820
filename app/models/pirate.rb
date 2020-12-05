class Pirate

  attr_reader :name, :weight, :height

  @@all = []

  def initialize(args)
    @name = params[:name]
    @weight = params[:weight]
    @height = params[:height]
   
    @@all << self
  end

  def self.all
    @@all
  end

end