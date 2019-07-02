class ShowCharacter

	attr_accessor :show, :character

	@@all = []

	def initialize(show, character)
		@show = show
		@character = character

		@@all << self
	end

	def self.all
		@@all
	end	
	

end