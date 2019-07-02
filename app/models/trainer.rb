class Trainer

attr_accessor :name

	@@all = []

	def initialize(name)
		@name = name
		# @clients = []

		@@all << self
	end

	def self.all
		@@all
	end	

	def clients
		Client.all.select { |client| client.trainer == self }
	end

	def self.most_clients
		nums = all.map {|t| t.clients.size}  #numbers of clients
		all[nums.index (nums.max{|a, b| a <=> b})] #found by the index of max number of clients
	end
	
end