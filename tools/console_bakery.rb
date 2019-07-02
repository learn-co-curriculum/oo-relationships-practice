require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


b1 = Bakery.new("Little Cupcakes")
b2 = Bakery.new("Wedding cakes")

d1 = Dessert.new("cupcake", b1)
d2 = Dessert.new("cookies", b1)

d3 = Dessert.new("carrot cake", b2)
d4 = Dessert.new("chocolate cake", b2)

i1 = Ingredient.new("sugar", d1, 500)

i2 = Ingredient.new("chocolate chips", d2, 600)

i3 = Ingredient.new("carrots", d3, 50)
i5 = Ingredient.new("rasin", d3, 350)

i4 = Ingredient.new("cacao", d4, 10)
i4 = Ingredient.new("chocolate butter", d4, 600)



Pry.start
