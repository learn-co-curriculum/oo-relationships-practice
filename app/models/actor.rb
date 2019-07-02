class Actor

attr_accessor :name

	@@all = []

	def initialize(name)
		@name = name
		@@all << self
	end

	def self.all
		@@all
	end	

	def characters
		Character.all.select {|c| c.actor == actor}
	end

	
end