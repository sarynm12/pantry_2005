class CookBook
  attr_reader :recipes

  def initialize
    @recipes = []
  end

  def add_recipe(recipe)
    @recipes << recipe
  end

  def ingredients
    ingredients = []
    recipes.each do |recipe|
      recipe.ingredients.each do |ingredient|
        ingredients << ingredient.name
      end
    end
    ingredients.uniq
  end

  def highest_calorie_meal
    @recipes.max_by |recipe|
      recipe.total_calories
    end
  end

  #above, instead of iterating over the hash ingredients_required, you can also use recipe.ingredients |ingredient|
    #ingredient_names << ingredient.name
  #end
