require 'pry'

class Listing

  attr_reader :city, :guests, :trips

  @@all = []

  def initialize(city)
    @city = city
    @@all << self
  end

  def self.all
    @@all
  end

  def trips
    Trip.all.select { |trip| trip.listing == self }
  end

  def guests
    trips.map { |trip| trip.guest.name }.uniq
  end

  def trip_count
    self.trips.count
  end

  def self.find_all_by_city(city)
    self.all.select { |listing| listing.city == city }
  end

  def self.most_popular
    self.all.max_by { |listing| listing.trip_count }
  end

end
