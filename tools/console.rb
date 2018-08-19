require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

vadim = Guest.new("Vadim")
joy = Guest.new("Joy")
haley = Guest.new("Haley")
juan = Guest.new("Juan")
felix = Guest.new("Felix")

ny_ph = Listing.new("New York's Best PH", "New York City")
med_hostel = Listing.new("Laureles Hostel", "Medellin")
nawlens = Listing.new("Drinking cap", "New Orleans")

trip1 = Trip.new("Best trip", vadim, med_hostel)
trip2 = Trip.new("Bachelor Party", vadim, nawlens)
trip3 = Trip.new("Discovering Medellin", joy, med_hostel)
trip4 = Trip.new("Out of names", felix, ny_ph)
trip5 = Trip.new("What up", joy, ny_ph)
trip6 = Trip.new("Group meeting",vadim,ny_ph)
binding.pry
Pry.start
