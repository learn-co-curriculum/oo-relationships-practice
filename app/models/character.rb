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

	def shows
		ShowCharacter.all.select {|sc| sc.character == self}
	end

	def movies
		MovieCharacter.all.select {|mc| mc.character == self}
	end

	def self.most_appearances
		appearances = all.map {|c| c.shows.size + c.movies.size}
		all[appearances.index(appearances.max {| a, b| a <=> b})]
	end
	
end