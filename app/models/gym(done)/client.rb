class Client
  attr_reader :trainer
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def assign_trainer(trainer)
    @trainer = trainer
  end

end
