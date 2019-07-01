class Guest

    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self

    end

    def self.all
        @@all
    end

    def trips    #returns an array of all trips a guest has made
        Trip.all.select do |list|
            list.guest == self
        end
    end

    def listings 
        trips.map do |trip| #returns an array of all listings a guest has stayed at
            trip.listing
        end

    end

    def self.pro_traveller #returns an array of all guests who have made over 1 trip
        self.all.map do |guest|
            if guest.trips.length > 1
                guest
            end
        end

            

    end

    def self.find_all_by_name(name)  #takes an argument of a name (as a string), returns the all guests with that name
        all.select do |guest|
            guest.name == name
        end
    end













end
