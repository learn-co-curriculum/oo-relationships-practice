require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

flatiron = Bakery.new("Flatiron Bakery")
yummy_time = Bakery.new("Yummy Time")

cake = Dessert.new("Chocolate Cake", flatiron)
cookies = Dessert.new("Cookies", yummy_time)

egg = Ingredient.new("Egg", 50, cake)
flour = Ingredient.new("Flour", 100, cake)
chocolate = Ingredient.new("Chocolate", 200, cake)

chips = Ingredient.new("Chips", 100, cookies)
peanuts = Ingredient.new("Peanuts", 50, cookies)

# chips.bakery

# puts chips.name == "Chips"

binding.pry
0