class Driver

	#attr_accessor :city

	@@all = []

	def initialize()
		@@all << self
	end

	def self.all
		@@all
	end

	def rides
		Ride.all.select {|r| r.driver == self}
	end

	def passengers
		rides.map {|r| r.passenger}
	end

	def totals
		rides.sum {|r| r.distance}
	end

	def self.mileage_cap(distance)
		all.select {|d| d.totals > distance}
	end

end