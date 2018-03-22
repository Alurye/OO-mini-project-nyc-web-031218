class RecipeCard

  ALL = []
  attr_accessor :name, :user, :recipe, :rating, :date

  def initialize(recipe, user, date, rating = 0)
    @recipe = recipe
    @user = user
    @date = date
    @rating = rating
    ALL << self
  end

  def self.all
    ALL
  end


end
