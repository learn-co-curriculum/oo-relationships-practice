class Dessert

    attr_reader :name, :bakery

    @@all = []

    def initialize(name, bakery)
        @name = name
        @bakery = bakery
        @@all << self
    end

    def self.all 
        @@all 
    end

    def ingredients
        # returns array of all ingredients
        # in this dessert
        Ingredient.all.select do |ingredient|
            ingredient.dessert == self
        end
    end

    def shopping_list
        # returns array of names (strings)
        # of all ingredients in this dessert
        self.ingredients.map do |ingredient|
            ingredient.name
        end
    end

    def calorie_count
        self.ingredients.map do |ingredient|
            ingredient.calorie_count
        end.sum

    end
end