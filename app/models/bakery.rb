class Bakery

attr_accessor :name

	@@all = []

	def initialize(name)
		
		@name = name

		@@all << self
	end

	def self.all
		@@all
	end	

	def desserts
		Dessert.all.select {|d| d.bakery == self}
	end

	def ingredients
		ingredients = []
		desserts.each {|d| ingredients << d.ingredients}
		ingredients.flatten!
	end

	def average_calories
		ingredients.sum {|i| i.calories}
	end
	
	def shopping_list
		ingredients.map { |i| i.name  }
	end
end