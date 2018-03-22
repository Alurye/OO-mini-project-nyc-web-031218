require_relative '../config/environment.rb'

arthur = User.new('Arthur')
helen = User.new('Helen')

ricotta = Ingredient.new('Ricotta')
pepper = Ingredient.new('Pepper')

ricotta_allergy1 = helen.declare_allergen(ricotta)
ricotta_allergy2 = arthur.declare_allergen(ricotta)
pepper_allergy = helen.declare_allergen(pepper)

Ingredient.most_common_allergen

binding.pry
