class User

  ALL = []
  attr_accessor :name



  def initialize(name)
    @name = name
    @recipes = []
    @allergens = []
  end


  def self.all
    ALL
  end

  def add_recipe_card(recipe, date, rating)
      @recipes << recipe
      r_card = RecipeCard.new(recipe, date, rating)
      r_card.user = self
      r_card
      # RecipeCard.recipe
  end

  def recipes
    @recipes
  end

  def most_recent_recipe
    @recipes[-1]
  end

  def top_three_recipes
  sorted_recipes = RecipeCard.all.sort_by do |card|
      card.rating
    end
      sorted_recipes.slice(-3,3)
  end

  def declare_allergen(ingredient)
      allergy = Allergen.new(self, ingredient)
      @allergens << allergy
      allergy
  end

  def allergens
    @allergens
  end
end
