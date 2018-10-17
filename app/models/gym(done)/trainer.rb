class Trainer

  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def locations
    Location.all.select do |location|
      location.trainers.
    end
  end

  def clients
    Client.all.select do |client|
      client.trainer == self
    end
  end

  def self.most_clients
    self.all.max do |a, b|
      a.clients.length <=> b.clients.length
    end

    # '.max takes two arguments, one is the base value, the other is the value that it's being compared to. returns the object with the max value

    # should find which trainer has the most clients. give that trainer a bonus!

  end

end
end
