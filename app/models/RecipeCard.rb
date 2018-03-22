class RecipeCard

  ALL = []
  attr_accessor :name, :user, :recipe, :rating, :date

  def initialize(recipe, date, rating = 0)
    @recipe = recipe
    @date = date
    @rating = rating
    ALL << self

  end

  def self.all
    ALL
  end


end
