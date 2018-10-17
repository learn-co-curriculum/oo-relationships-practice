class Session

  attr_accessor :client, :trainer, :location

  @@all = []

  def initialize(client, trainer, location)
    @client = client
    @trainer = trainer
    @location = location
    @@all << self
  end

  def self.all
    @@all
  end

end
