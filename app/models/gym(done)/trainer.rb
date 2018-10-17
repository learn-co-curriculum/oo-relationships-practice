class Trainer

  attr_accessor :name, :locations

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def sessions
    Session.all.select do |session|
      session.trainer == self
    end
  end


  def locations
    self.sessions.collect do |session|

        session.location

    end
    #binding.pry
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
  end

  end
