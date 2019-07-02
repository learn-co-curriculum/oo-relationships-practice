class MovieCharacter

	attr_accessor :movie, :character

	@@all = []

	def initialize(movie, character)
		@movie = movie
		@character = character

		@@all << self
	end

	def self.all
		@@all
	end	
	

end