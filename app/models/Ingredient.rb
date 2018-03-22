class Ingredient
  ALL = []
  attr_accessor :name

  def initialize(name)
    @name = name
    ALL << self
  end


  def self.all
    ALL
  end

  # def most_common_allergen
  #     allergy_causing_ings =  self.all.select do |ingredient|
  #       Allergen.all.ingredient == self
  #   end
  #     counter = 0
  #     max_allergies = nil
  #     highest_count = 0
  #     allergy_causing_ings.each do |ingredient|
  #
  #     end
  #
  # end
  def self.most_common_allergen
    highest_allergen = nil
    highest_allergen_count = 0
    self.all.each do |ingredient|
       counter = 0
      Allergen.all.each do |allergen|
          if ingredient == allergen.ingredient
             counter+=1
          end
      end
          if counter > highest_allergen_count
           highest_allergen_count = counter
           highest_allergen = ingredient
          end
         end
         highest_allergen
  end

end
