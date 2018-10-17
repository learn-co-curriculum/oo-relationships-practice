require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


client1 = Client.new("Carson")
client2 = Client.new("Nina")
client3 = Client.new("Ron")
client4 = Client.new("Ali")
client5 = Client.new("Zoe")
client6 = Client.new("Kaitlin")
client7 = Client.new("Lili")

location1 = Location.new("Queens Gym")
location2 = Location.new("Bronx Gym")
location3 = Location.new("Brooklyn Gym")
location4 = Location.new("UWS Gym")
location5 = Location.new("LES Gym")

trainer1 = Trainer.new("John")
trainer2 = Trainer.new("Trevor")
trainer3 = Trainer.new("Joe")
trainer4 = Trainer.new("Tim")
trainer5 = Trainer.new("Julie")

session1 = Session.new(client1, trainer1, location1)
session2 = Session.new(client2, trainer1, location2)
session3 = Session.new(client3, trainer1, location2)
session4 = Session.new(client4, trainer2, location2)
session5 = Session.new(client5, trainer5, location3)
session6 = Session.new(client6, trainer4, location4)
binding.pry


something = "hello"
