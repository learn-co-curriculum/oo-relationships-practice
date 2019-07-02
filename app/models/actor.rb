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
		Character.all.select {|c| c.actor == self}
	end

	def self.most_characters
		all.max {|a,b| a.characters.size <=> b. characters.size}
	end
end