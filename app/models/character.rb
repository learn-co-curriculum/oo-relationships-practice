class Character

attr_accessor :name, :actor

	@@all = []

	def initialize(name, actor)
		@name = name
		@actor = actor
		@@all << self
	end

	def self.all
		@@all
	end	

	
end