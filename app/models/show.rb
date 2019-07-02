class Show

attr_accessor :title

	@@all = []

	def initialize(title)
		@title = title
		@@all << self
	end

	def self.all
		@@all
	end	

	def self.on_the_big_screen
		all.select {|s|  Movie.all.select {|m| m.title == s.title} != []}		
	end

	
end