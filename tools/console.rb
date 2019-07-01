require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


g1 = Guest.new("Babkova")
g2 = Guest.new("Aaron")
g3 = Guest.new("Marrio")
g4 = Guest.new("Abideem")


l1 = Listing.new("Rome", "31 Gato street")
l2 = Listing.new("Moscow", "20-20 Arbat street")
l4 = Listing.new("Moscow", "55 Maroseyka street")

l3 = Listing.new("Aruba", "50 Main street")


Trip.new(g1, l1)
Trip.new(g4, l2)
Trip.new(g3, l2)
Trip.new(g2, l3)

Trip.new(g2, l1)



Pry.start
