class Ride

  @@all = []
  attr_accessor :name, :distance, :passenger, :driver

  def initialize(name,distance,passenger,driver)
    @name = name
    @distance = distance
    @passenger = passenger
    @driver = driver
    @@all << self
  end

  def self.all
    @@all
  end

  def self.average_distance
    total_distance = 0
    all.each {|ride| total_distance += ride.distance}
    total_distance.to_f/(all.count)
  end

end
