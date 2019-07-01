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

    def trips
        Trip.all.select do |trip|
            trip.listing == self
        end
    end

    def guests
        trips.map do |trip|
            trip.guest
        end
    end

    def trip_count
        trips.length
    end

    def self.find_all_by_city(city)
        all.select do |listing|
            listing.city == city
        end
    end

    def self.most_popular
        all.max do |a, b|
            a.trip_count <=> b.trip_count
        end
    end

end