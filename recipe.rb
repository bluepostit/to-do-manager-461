class Recipe
  attr_reader :ingredients

  def initialize(name)
    @name = name
    @ingredients = []
  end

  def add_ingredient(ingredient)
    @ingredients << ingredient
  end
end

pancakes = Recipe.new('pancakes')
french_toast = Recipe.new('french toast')

pancakes.add_ingredient('eggs')
french_toast.add_ingredient('white bread')

p pancakes
p french_toast
