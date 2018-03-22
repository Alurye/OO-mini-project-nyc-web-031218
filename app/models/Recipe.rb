class Recipe

  ALL = []
  attr_accessor :name
  attr_reader :ingredients

  def initialize(name)
    @name = name
    ALL << self
    @ingredients = []
  end

  def self.all
    ALL
  end

  def users
    RecipeCard.all.select do |card|
      card.recipe = self
      RecipeCard.user
    end
  end

  def self.most_popular
    highest_recipe = nil
    highest_recipe_count = 0
    self.all.each do |recipe|
       counter = 0
      RecipeCard.all.each do |card|
          if recipe == card.recipe
             counter+=1
          end
      end
          if counter > highest_recipe_count
           highest_recipe_count = counter
           highest_recipe = recipe
          end
         end
         highest_recipe
  end

  def add_ingredients(ingredients)
      ingredients.each do |ingredient|
        @ingredients << ingredient
       recipe_ingredient = RecipeIngredient.new(ingredient, self)
      end

  end

  def ingredients
      @ingredients
  end
end
