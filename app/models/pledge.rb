class Pledge

attr_accessor :project, :pledger, :money

	@@all = []

	def initialize(project, pledger, money)
		@project = project
		@pledger = pledger
		@money = money

		@@all << self
	end

	def self.all
		@@all
	end	

	

	
end