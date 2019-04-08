require 'pry'

class Passenger

  attr_reader :passenger

  @@all = []

  def initialize(passenger)
    @passenger = passenger
    @@all << self
  end

  def self.all
    @@all
  end

  def rides
    Ride.all.select { |ride| ride.passenger == self }
  end

  def drivers
    self.rides.map { |ride| ride.driver }
  end

  def total_distance
    my_rides = self.rides.map { |ride| ride.distance }
    my_rides.inject(0) { |sum, num| sum + num }
  end

  def self.premium_members
    @@all.select { |passenger| passenger.total_distance > 100 }
  end

end
