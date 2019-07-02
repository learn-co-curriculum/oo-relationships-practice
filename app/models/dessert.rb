class Dessert

attr_accessor  :name, :bakery

	@@all = []

	def initialize(name, bakery)
		@name = name
		@bakery = bakery

		@@all << self
	end

	def self.all
		@@all
	end	

	def ingredients
		Ingredient.all.select {|i| i.dessert == self}
	end
	
	def calories
		ingredients.sum {|i| i.calories}
	end
	
end