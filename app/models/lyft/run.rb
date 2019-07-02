require 'pry'
require_relative '../lyft/passengers.rb'
require_relative '../lyft/drivers.rb'
require_relative '../lyft/rides.rb'

p1 = Passenger.new('Alpha')
p2 = Passenger.new('Bravo')
p3 = Passenger.new('Charlie')

d1 = Driver.new('Delta')
d2 = Driver.new('Echo')
d3 = Driver.new('Foxtrot')

r1 = Ride.new(p1, d1, 80)
r2 = Ride.new(p2, d3, 160)
r3 = Ride.new(p2, d2, 40)
r4 = Ride.new(p3, d2, 70)
r5 = Ride.new(p3, d1, 140)

binding.pry
# Passenger.premium_members
0