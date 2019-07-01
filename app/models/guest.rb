class Guest

	attr_accessor :name

	@@all = []

	 def initialize (name)
	 	@name = name
	 	@@all << self
	 end

	def self.all
		@@all
	end

	def trips
		Trip.all.select {|t| t.guest == self}
	end

	def listings
		trips.map {|t| t.listing}
	end

	def trip_count
		trips.size
	end

	def self.pro_traveller
		all.select {|g| g.trip_count > 1}
	end

	def self.find_all_by_name(name)
		all.select {|g| g.name == name}
	end

end