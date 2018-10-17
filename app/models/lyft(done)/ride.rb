class Ride

  attr_accessor :passenger, :driver, :distance

  @@all = []

  def initialize(driver, passenger, distance)
    @driver = driver
    @passenger = passenger
    @distance = distance
    @@all << self
  end

  def self.all
    @@all
  end


  def self.all_rides_distances
      self.all.collect do |ride|
        ride.distance
      end
  end


  def self.average_distance
    total_miles = self.all_rides_distances.reduce(:+).round(2)
    number_of_rides = self.all_rides_distances.size
    avg = total_miles / number_of_rides
    avg
  end

end
