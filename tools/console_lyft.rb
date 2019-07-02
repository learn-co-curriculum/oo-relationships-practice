require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


d1 = Driver.new()
d2 = Driver.new()
d3 = Driver.new()

p1 = Passenger.new()
p2 = Passenger.new()
p3 = Passenger.new()

Ride.new(d1, p1, 20)
Ride.new(d1, p2, 30)
Ride.new(d1, p3, 25)

Ride.new(d2, p1, 5)
Ride.new(d3, p2, 8)
Ride.new(d3, p3, 12)

Pry.start
