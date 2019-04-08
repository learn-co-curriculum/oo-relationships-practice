require 'pry'

class Guest

  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def listings
    trips.map { |trip| trip.listing }.uniq
  end

  def trips
    Trip.all.select { |listing| listing.guest == self }
  end

  def trip_count
    self.trips.count
  end

  def self.pro_traveller
    self.all.max_by { |guest| guest.trip_count > 1 }
  end


end
