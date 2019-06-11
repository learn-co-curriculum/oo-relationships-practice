require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

philip = User.new("Philip",100)
spencer = User.new("Spencer",30)
rohit = User.new("Rohit #chicken",100000)
mwp = philip.create_project("Make Whole Pennies", 400)
barefoot = spencer.create_project("New Shoes", 50)
barehanded = spencer.create_project("New Gloves", 30)
gas = rohit.create_project("GMO Chicken", 20000000)
spencer.create_pledge(gas,15)
spencer.create_pledge(mwp,10)
philip.create_pledge(barefoot,60)
philip.create_pledge(gas,5)
rohit.create_pledge(barefoot,1)
rohit.create_pledge(gas,20)
Pry.start
