class Dessert

  @@all = []
  attr_accessor :name

  def initialize(name,bakery)
    @name = name
    @bakery = bakery
    @@all << self
  end

  def self.all
    @@all
  end

  def bakery
    @bakery
  end

  def ingredients
    Ingredient.all.select {|ingredient| ingredient.dessert == self}
  end

  def calories
    total_calories = 0
    ingredients.each {|ingredient| total_calories += ingredient.calories}
    total_calories
  end

end
