require_relative '../config/environment.rb'

arthur = User.new('Arthur')
helen = User.new('Helen')

stuffed_peppers = Recipe.new('Stuffed Peppers')
cheesy_peppers = Recipe.new('Cheesy Peppers')

ricotta = Ingredient.new('Ricotta')
pepper = Ingredient.new('Pepper')

arthur.add_recipe_card(stuffed_peppers, "today", 7)
arthur.add_recipe_card(cheesy_peppers, "yesterday", 8)

binding.pry
