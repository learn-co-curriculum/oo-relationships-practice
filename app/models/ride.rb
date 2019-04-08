require 'pry'

class Ride

  attr_reader :passenger, :driver, :distance

  @@all = []
  @@distance_array =[]

  def initialize(passenger, driver, distance)
    @passenger = passenger
    @driver = driver
    @distance = distance
    @@distance_array << distance
    @@all << self
  end

  def self.all
    @@all
  end

  def self.average_distance
    @@distance_array.inject(0.0) { |sum, num| sum + num } / @@distance_array.size
  end

end
