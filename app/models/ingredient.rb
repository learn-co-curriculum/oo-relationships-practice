class Ingredient

attr_accessor  :name, :dessert, :calories

	@@all = []

	def initialize(name, dessert, calories)
		@name = name
		@dessert = dessert
		@calories = calories

		@@all << self
	end

	def self.all
		@@all
	end	

	def self.find_all_by_name(ingredient)
		all.select {|i| i.name.include?(ingredient)}
	end
	
end