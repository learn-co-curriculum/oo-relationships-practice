class Listing
    @@all = []
    attr_accessor :city
    def initialize (city)
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
        count = trips.length
        count
    end

    def self.find_all_by_city(city)
        Trip.all.select do |trip|
            trip.listing.city == city
        end
    end

    def self.most_popular
        self.all.max_by do |listing|
            listing.trip_count
        end
    end


        #find all the listings
        
        
        #compare the listing amounts?
         
        #return the listing with the greatest
        

end