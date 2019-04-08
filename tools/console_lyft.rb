require 'pry'
require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

p1 = Passenger.new("Dunia")
p2 = Passenger.new("Katie")
p3 = Passenger.new("Shush")
p4 = Passenger.new("Melanie")
p5 = Passenger.new("Meena")
p6 = Passenger.new("Yassin")

d1 = Driver.new("Ahmad")
d2 = Driver.new("Mohamad")
d3 = Driver.new("Mahmoud")
d4 = Driver.new("Ali")
d5 = Driver.new("Omar")

r1 = Ride.new(p1, d4, 50)
r2 = Ride.new(p4, d5, 70)
r3 = Ride.new(p1, d5, 8)
r4 = Ride.new(p2, d3, 10)
r5 = Ride.new(p6, d2, 25)
r6 = Ride.new(p2, d2, 30)
r7 = Ride.new(p3, d1, 100)
r8 = Ride.new(p4, d2, 150)
r9 = Ride.new(p6, d5, 5)

Pry.start
