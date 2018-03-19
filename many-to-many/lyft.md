## Deliverables
You are building an app for a Lyft/Uber competitor
- your models are clients, drivers, rides
  - a client has many rides
  - a driver has many rides
  - a ride belongs to a client and a driver
    - a ride is initialized with a distance
Write out the relationships using has_many, belongs_to and has_many_through. Create the necessary methods to connect these classes.

#### Client
- #total_distance
  - should calculate the total distance the client has travelled with the service
- .premium_members
  - should find all clients who travel over 100 miles per month with the service

#### Driver
- .mileage_cap
  - should find all drivers who have exceeded the monthly limit of 5000 miles

#### Ride
- .average_distance
  - should find the average distance of all rides
