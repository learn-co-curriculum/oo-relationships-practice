class Location

	attr_accessor :city

	@@all = []

	def initialize(city)
		@city = city
		@@all << self
	end

	def self.all
		@@all
	end

	def self.clients_nums
		LocationTrainer.all.map {|lt| lt.trainer.clients.size}
	end
	
	def self.least_clients
		index = clients_nums.index(clients_nums.min {|a, b| a <=> b})
		LocationTrainer.all[index].location
	end

end