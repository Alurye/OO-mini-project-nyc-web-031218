class RecipeIngredient

  attr_reader :ingredient, :recipe
  ALL = []

  def initialize(ingredient, recipe)
    @ingredient = ingredient
    @recipe = recipe
    ALL << self
  end

  def self.all
   ALL
  end



end
