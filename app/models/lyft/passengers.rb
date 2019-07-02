class Passenger

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
            r.passenger == self
        end
    end

    def drivers
        rides.map do |r|
            r.driver
        end
    end

    def total_distance
        total = 0
        rides.each do |r|
            total += r.distance
        end
        total
    end

    def self.premium_members
        self.all.select do |p|
            if p.total_distance > 100
                p
            end
        end
    end

end