class Driver

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
    Ride.all.select {|ride| ride.driver == self}
  end

  def passengers
    rides.map {|ride| ride.passenger}
  end

  def self.mileage_cap(distance)
    all.select {|driver| driver.total_distance > distance}
  end

  #helper method for mileage_cap
  def total_distance
    distance_travelled = 0
    rides.each {|ride| distance_travelled += ride.distance}
    distance_travelled
  end
end
