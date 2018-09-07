class Listing

  attr_reader :name
  @@all = []

  def initialize(name,city)
    @name = name
    @city = city
    @@all << self
  end

  def self.all
    @@all
  end

  def trips
    Trip.all.select {|trip| trip.listing == self}
  end

  def guests
    trips.map {|trip| trip.guest}
  end

  def trip_count
    trips.count
  end

  def self.find_all_by_city(city)
    all.select {|listing| listing.city == city}
  end

  def self.most_popular
    count = 0
    all.each do |listing|
      if listing.trip_count > count
        count = listing.trip_count
        winner = listing
      end
    end
    winner
  end

end
