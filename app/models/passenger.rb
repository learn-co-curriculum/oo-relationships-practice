class Passenger

	#attr_accessor :city

	@@all = []

	def initialize()
		@@all << self
	end

	def self.all
		@@all
	end

	def rides
		Ride.all.select {|r| r.passenger == self}
	end

	def drivers
		rides.map {|r| r.driver}
	end

	def total_distance
		rides.sum {|r| r.distance}
	end

	def self.premium_members
		totals = all.map {|p| p.total_distance}
		all[totals.index (totals.max {|a, b| a<=>b })]
	end

end