require 'pry'

class Driver

  attr_reader :driver

  @@all = []

  def initialize(driver)
    @driver = driver
    @@all << self
  end

  def self.all
    @@all
  end

  def rides
    Ride.all.select { |ride| ride.driver == self }
  end

  def drivers
    self.rides.map { |ride| ride.passenger }
  end

  def total_distances
    driver_distances = self.rides.map { |ride| ride.distance }
    driver_distances.inject(0) { |sum, num| sum + num }
  end

  def self.mileage_cap(distance)
    @@all.select { |driver| driver.total_distances > distance }
  end

end
