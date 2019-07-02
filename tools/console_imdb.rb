require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

aniston = Actor.new("Jennifer Aniston")
perry = Actor.new("Matthew Perry")

parker = Actor.new("Sarah Jessicah Parker")
kim = Actor.new("Kim Cattrall")


carrie = Character.new("Carrie Bradshow", parker)
samantha = Character.new("Samantha Jones", kim)
shelly = Character.new("Shelly Stewart", parker)



sic_movie = Movie.new("Sex in the city")
wives_movie = Movie.new("The first wives club")


sic_show = Show.new("Sex in the city")


MovieCharacter.new(sic_movie, carrie)
MovieCharacter.new(sic_movie, samantha)
MovieCharacter.new(wives_movie, shelly)


ShowCharacter.new(sic_movie, carrie)
ShowCharacter.new(sic_movie, samantha)


Pry.start
