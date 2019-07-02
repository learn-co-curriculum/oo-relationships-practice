class Movie

attr_accessor :title

	@@all = []

	def initialize(title)
		@title = title
		@@all << self
	end

	def self.all
		@@all
	end	

	def characters
		MovieCharacter.all.select {|mc| mc.movie == self}
	end

	def self.actors_nums
		all.map {|m| m.characters.size}
	end

	def self.most_actors
		Movie.all[actors_nums.index (actors_nums.max {|a,b| a<=>b})]
	end

	
end