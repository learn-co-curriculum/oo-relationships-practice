# create files for your ruby classes in this directory
require_relative 'Listing.rb'
require_relative 'Guest.rb'
require_relative 'Trip.rb'
require 'pry'







listing1 = Listing.new("Houston")
listing2 = Listing.new("New York")
listing3 = Listing.new("Las Vegas")
listing4 = Listing.new("Tokyo")
listing5 = Listing.new("Paris")

guest1 = Guest.new("Bob")
guest2 = Guest.new("John")
guest3 = Guest.new("Lily")
guest4 = Guest.new("Abigail")

trip1 = Trip.new(listing1, guest1)
trip2 = Trip.new(listing2, guest2)
trip3 = Trip.new(listing3, guest3)
trip4 = Trip.new(listing4, guest4)
trip5 = Trip.new(listing5, guest1)
trip6 = Trip.new(listing1, guest2)
trip7 = Trip.new(listing2, guest3)
trip8 = Trip.new(listing2, guest4)





binding.pry
0

