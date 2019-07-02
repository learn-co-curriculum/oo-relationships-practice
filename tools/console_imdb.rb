require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

#Friends
aniston = Actor.new("Jennifer Aniston")
perry = Actor.new("Matthew Perry")

rachel = Character.new("Rachel Green", aniston)
sandy = Character.new("Sandy Newhouse", aniston)
m = Character.new("Maureen Murphy", aniston)

chandler = Character.new("Chandler Bing", perry)



#Sex in the city
parker = Actor.new("Sarah Jessicah Parker")
kim = Actor.new("Kim Cattrall")


carrie = Character.new("Carrie Bradshow", parker)
samantha = Character.new("Samantha Jones", kim)
shelly = Character.new("Shelly Stewart", parker)

sic_show = Show.new("Sex in the city")
sic_movie = Movie.new("Sex in the city")

#others
wives_movie = Movie.new("The first wives club")

bb_show = Show.new("Breaking Bad")
got_show = Show.new("Game of Thrones")



MovieCharacter.new(sic_movie, carrie)
MovieCharacter.new(sic_movie, samantha)
MovieCharacter.new(wives_movie, shelly)


ShowCharacter.new(sic_movie, carrie)
ShowCharacter.new(sic_movie, samantha)


Pry.start
