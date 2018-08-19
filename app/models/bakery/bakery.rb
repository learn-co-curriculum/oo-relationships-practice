class Bakery

  @@all = []
  attr_reader :name

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def desserts
    Dessert.all.select {|dessert| dessert.bakery == self}
  end

  def ingredients
    desserts.map {|dessert| dessert.ingredients}.flatten.uniq
  end

  def shopping_list
    ingredients.map {|ingredient| ingredient.name}
  end

end
