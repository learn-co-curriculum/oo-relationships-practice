require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

c1 = Listing.new("Cairo")
c2 = Listing.new("Belize")
c3 = Listing.new("Lagos")
c4 = Listing.new('Moscow')

g1 = Guest.new("Tim")
g2 = Guest.new("joe")
g3 = Guest.new("Susan")
g4 = Guest.new("Lisa")

t1 = Trip.new(c1, g2)
t2 = Trip.new(c4, g1)
t3 = Trip.new(c1, g3)
t4 = Trip.new(c3, g2)
t5 = Trip.new(c2, g3)
t6 = Trip.new(c3, g4)
t7 = Trip.new(c3, g1)






Pry.start
