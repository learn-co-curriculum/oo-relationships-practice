class Location

  attr_accessor :name, :trainers

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def trainers
    Trainer.all.select do |trainer|
      trainer.locations = self
    end
  end

  def sessions
    Session.all.select do |session|
      session.location == self
    end
  end

  def self.least_clients
    Location.all.min do |locationA, locationB|
      locationA.sessions.length <=> locationB.sessions.length
    end
    # should find which location has the least clients training there. we need to increase the marketing spend for that location!
  end

end
