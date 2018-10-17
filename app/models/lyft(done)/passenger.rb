class Passenger

  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def rides
    Ride.all.select do |ride|
      ride.passenger == self
    end
  end

  def drivers
    rides.collect do |ride|
      ride.driver
    end
  end

  def total_distance
    ride_array = rides.collect{|ride| ride.distance}
    ride_array.reduce(0, :+).round(2)
  end

  def self.all
    @@all
  end

  def self.premium_members
    self.all.select do |passenger|
      passenger.total_distance > 100
    end
  end
end
