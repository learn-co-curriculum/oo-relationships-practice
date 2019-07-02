require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

u1 = User.new("Mary Stocks")
u2 = User.new("John Poor")
u3 = User.new("Steve Jobs")
u4 = User.new("Alice Pence")


p1 = Project.new("Super Internet Store", u3, 10000)
p2 = Project.new("Mega Internet Chat", u1, 6000)
p3 = Project.new("Amazing Internet Forum", u1, 5000)
p4 = Project.new("Crazy Internet Game", u3, 20000)

pl1 = Pledge.new(p1, u4, 100)
pl2 = Pledge.new(p1, u2, 1000)

pl3 = Pledge.new(p2, u2, 2000)
pl4 = Pledge.new(p2, u3, 3000)
pl5 = Pledge.new(p2, u4, 2000)

pl6 = Pledge.new(p3, u3, 100)

#pl7 = Pledge.new(p4, u4, 500)



Pry.start
