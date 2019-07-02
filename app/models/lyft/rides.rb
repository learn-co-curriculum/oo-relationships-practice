class Ride

    @@all = []

    attr_accessor :passenger, :driver, :distance

    def initialize(passenger, driver, distance)
        @passenger = passenger
        @driver = driver
        @distance = distance
        @@all << self
    end

    def self.all
        @@all
    end

    def self.average_distance
        dist = 0
        Ride.all.select do |r|
            dist += r.distance
        end
        dist / Ride.all.length
    end

end