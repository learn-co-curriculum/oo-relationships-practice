## Installation
Clone this repo from Github. CD into the main directory using your console and run `bundle install` to install all Gem dependencies.

## Challenges
This repo contains two distinct domains for practicing building Object-Oriented Relationships.

Domains are broken into separate directories by type. The `Many-to-Many` directory holds specs for many to many relationships. The `Complex` directory has relationships beyond the simple many-to-many.

The complex relationships are not simple has_many_through or join relationships, so take the time to plan them out and draw them. If you see multiple ways to build those relationships, try both of them and see if you can identify benefits and weaknesses to each of those domain models. During project mode (and as a working developer) you will be responsible for building out domain models to represent real world situations. A poorly thought out domain can lead to brittle code that requires a lot of maintenance and rewriting in the future.


## Testing Your Code

We've provided you with a console that you can use to test your code. Write all your code in the app folder so that it is loaded into the environment. To enter a console session, run ruby tools/console.rb. You'll be able to test out the methods that you write here.
