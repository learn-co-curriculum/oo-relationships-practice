class Listing

    attr_accessor :city

    @@all = []

    def initialize(city)
        @city = city
        @@all << self
    end

    def self.all
        @@all
    end

    def trips    #returns an array of all trips at a listing
        Trip.all.select do |list|
            list.listing == self
        end
    end

    def guests      #returns an array of all guests who have stayed at a listing
        trips.map do |trip|
            trip.guest
        end
    end

    def trip_count  #returns the number of trips that have been taken to that listing
        trips.size
    end

    def self.find_all_by_city(city) #takes an argument of a city name (as a string) and returns all the listings for that city
        all.select do |listing|
            listing.city == city
        end
    end

    def self.most_poplar #finds the listing that has had the most trips
        Listing.all.max do |a, b|
            a.trip_count <=> b.trip_count
        end
    end
    






    












end