
class Client

	attr_accessor :name, :trainer

	@@all = []

	def initialize(name, trainer)
		@name = name
		@trainer = trainer
		@trainer.clients << self
		@@all << self
	end

	def self.all
		@@all
	end

	def assign_trainer (trainer)
		@trainer = trainer
	end
	
end