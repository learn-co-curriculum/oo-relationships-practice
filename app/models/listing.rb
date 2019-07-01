class Listing

	attr_accessor :city, :address

	@@all = []

	 def initialize (city, address)
	 	@city = city
	 	@address = address
	 	@@all << self
	 end

	def self.all
		@@all
	end

	def trips
		Trip.all.select {|t| t.listing == self}
	end

	def guests
		trips.map {|t| t.guest}
	end

	def trip_count
		trips.size
	end

	def self.find_all_by_city(city)
		all.select {|c| c.city == city}
	end

	def self.most_popular
		all.max { |a, b| a.trip_count <=> b.trip_count }
	end
end