class CookBook
  attr_reader :recipes

  def initialize
    @recipes = []
  end

  def add_recipe(recipe)
    @recipes << recipe
  end

  def ingredients
    results = []
    recipes.each do |recipe|
      recipe.ingredients.each do |ingredient|
      results << ingredient.name
      end
    end
    results.uniq
  end

  def highest_calorie_meal
    @recipes.max_by do |recipe|
      recipe.total_calories
    end
  end
end 
