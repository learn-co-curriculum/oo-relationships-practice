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
		all.each {|s| Movie.select {|m| m.title == s.title}}
		
	end

	
end