# Level: Easy

## Deliverables

You are building an app for a Lyft/Uber competitor

- your models are passengers, drivers, rides
  - a passenger has many rides
    - a passenger is initialized with a name 
  - a driver has many rides
    - a driver is initialized with a name 
  - a ride belongs to a passenger and a driver
    - a ride is initialized with a distance (as a float)

Write out the relationships using has_many, belongs_to and has_many_through.

Complete the following deliverables.  You may choose to make additional helper methods if you find them useful.

#### Passenger

- #name 
  - returns the name of the passenger
- #rides
  - returns all rides a passenger has been on
- #drivers
  - returns all drivers a passenger has ridden with
- .all
  - returns an array of all passengers
- #total_distance
  - should calculate the total distance the passenger has travelled with the
    service
- .premium_members
  - should find all passengers who have travelled over 100 miles with the service

#### Driver

- #name 
  - returns the name of the driver
- #rides
  - returns all rides a driver has made
- #passengers
  - returns all passengers a driver has had
- .all
  - returns an array of all drivers
- .mileage_cap(distance)
  - takes an argument of a distance (float) and returns all drivers who have exceeded that mileage

#### Ride

- #passenger
  - returns the passenger object for that ride
- #driver
  - returns the driver object for that ride
- #distance
  - returns the distance travelled for that ride
- .average_distance
  - should find the average distance of all rides
