## Deliverables
You are building an app for an Airbnb competitor
- your models are hosts, guests, trips
  - a host has many trips
  - a guest has many trips
  - a trip belongs to a host and a guest
    - a trip has a location
Write out the relationships using has_many, belongs_to and has_many_through. Create the necessary methods to connect these classes.

#### Host
- .premier_hosts
  - finds all hosts who have had over 20 stays

#### Guest
- .pro_traveller
  - returns guests who have made over 10 stays

#### Trip
- .most_popular_location
  - finds the location that has had the most trips


