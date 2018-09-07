class Passenger

  @@all = []
  attr_accessor :name

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def rides
    Ride.all.select {|ride| ride.passenger == self}
  end

  def drivers
    rides.map {|ride| ride.driver}
  end

  def total_distance
    distance_travelled = 0
    rides.each {|ride| distance_travelled += ride.distance}
    distance_travelled
  end

  def self.premium_members
    all.select {|passenger| passenger.total_distance > 100}
  end

end
