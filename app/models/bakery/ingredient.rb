class Ingredient

  @@all = []
  attr_reader :name, :calories

  def initialize(name,calories, bakery)
    @name = name
    @calories = calories
    @bakery = bakery
    @@all << self
  end

  def self.all
    @@all
  end

  def dessert
    @dessert
  end

  def bakery
    dessert.bakery
  end

  def self.find_all_by_name(ingredient)
    all.select {|item| item.downcase.include?(ingredient.downcase)}
  end

end
