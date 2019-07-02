require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


l1 = Location.new("California")
l2 = Location.new("Florida")

t1 = Trainer.new("Jillian Michels")
t2 = Trainer.new("Anna Kurnikova")

LocationTrainer.new(t1, l1)
LocationTrainer.new(t2, l2)


c1 = Client.new("Lazy Joe", t2)
c2 = Client.new("Fit Mary", t1)
c3 = Client.new("Fat Dave", t1)
c4 = Client.new("Slim Sue", t1)


#c1.assign_trainer(t1)
#c2.assign_trainer(t2)



Pry.start
