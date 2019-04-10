class Guest
    @@all = []
    attr_accessor :name
    def initialize(name)
        @name = name
        @@all << self
    end
    def self.all
        @@all
    end

    def trips
        Trip.all.select do |trip|
            trip.guest == self
        end
    end

    def listings
        trips.map do |trip|
            trip.listing
        end
    end

    def trip_count
        count = trips.length
        count
    end

    def self.find_all_by_name(name)
        Trip.all.select do |trip|
            trip.guest.name == name
        end
    end

    def self.pro_traveller
        self.all.select do |guest|
            guest.trip_count > 1
        end
    end
end