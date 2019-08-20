class Bakery

    attr_reader :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all 
    end

    def desserts
        # should return an array 
        # of desserts the bakery makes
        Dessert.all.select do |dessert|
            dessert.bakery == self
        end
    end

    def ingredients
        # should return an array of all ingredients this bakery uses
        self.desserts.collect do |dessert|
            dessert.ingredients 
        end
        # Ingredient.all.select do |ingredient|
        #     ingredient.bakery == self
        # end
    end

end