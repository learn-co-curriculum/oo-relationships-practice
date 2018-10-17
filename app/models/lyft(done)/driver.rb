
class Driver
#definition of class
  attr_accessor :name
  #it was not specified that the Driver can't change their name so we want to give them a reader & writer for their name
  @@all = []
  #this allows all Drivers to be stored
  def initialize(name)
    @name = name
    @@all << self
    #here we set our drivers name and shovel them into our mass collection of drivers
  end

  def self.all
    @@all
    #this is our method that returns all drivers
  end


  def rides
    Ride.all.select do |ride|
     ride.driver == self
   end
   # We go over each ride in the collection of rides in the Ride class and select the ones where the driver of the ride is the same as the current driver instance that this method is being called on.
  end
  #we want to use select here because we want all the ACTUAL instances for which a certain condition is true

  # if we used '.collect' here it would iterate over all rides and check if the condition is true for that specific ride. It would then report if the ride was true or not. That's not what we want!

  def passenger_names
    names = rides.collect do |ride|
      ride.passenger.name
    end
    names.uniq
    #we want to
  end

  def self.mileage_cap(distance)
    drivers = []
    Ride.all.each do |ride|
    if ride.distance > distance
      drivers << ride.driver
    end
    end
    drivers.uniq
  end
end
