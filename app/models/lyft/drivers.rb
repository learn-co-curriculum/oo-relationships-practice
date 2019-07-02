class Driver

    @@all = []

    attr_accessor :name

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def rides
        Ride.all.select do |r|
            r.driver == self
        end
    end

    def passengers
        rides.map do |r|
            r.passenger
        end
    end

    def total_distance
        total = 0
        rides.each do |r|
            total += r.distance
        end
        total
    end

    def self.mileage_cap(dist)
        self.all.select do |d|
            if d.total_distance > dist
                d
            end
        end
    end
end