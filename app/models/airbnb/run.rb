require 'pry'
require_relative '../airbnb/guests.rb'
require_relative '../airbnb/listings.rb'
require_relative '../airbnb/trips.rb'

g1 = Guest.new('Syed')
g2 = Guest.new('Naush')

l1 = Listing.new('Houston')
l2 = Listing.new('New York')
l3 = Listing.new('Atlanta')

t1 = Trip.new(l1, g2)
t2 = Trip.new(l2, g1)
t3 = Trip.new(l3, g1)

binding.pry
0