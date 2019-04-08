require 'pry'
require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

tokyo = Listing.new("Tokyo")
honolulu = Listing.new("Honolulu")
firenze = Listing.new("Firenze")
tokyo_suburbs = Listing.new("Tokyo")
honolulu_beachhouse = Listing.new("Honolulu")
firenze_palace = Listing.new("Firenze")

dunia = Guest.new("Dunia")
harriet = Guest.new("Harriet")
xabi = Guest.new("Xabi")

t1 = Trip.new(tokyo, dunia)
t2 = Trip.new(honolulu, xabi)
t3 = Trip.new(firenze, harriet)
t4 = Trip.new(tokyo, xabi)
t5 = Trip.new(tokyo, dunia)
t6 = Trip.new(honolulu, harriet)
t7 = Trip.new(firenze_palace, harriet)
t8 = Trip.new(tokyo_suburbs, dunia)
t9 = Trip.new(honolulu_beachhouse, dunia)

binding.pry
"p"
