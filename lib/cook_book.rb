class CookBook
  attr_reader :recipes

  def initialize
    @recipes = []
  end

  def add_recipe(recipe)
    @recipes << recipe
  end

  # def total_calories
  #   total = @recipes.map do |recipe|
  #     recipe.ingredients.sum do |ingredient|
  #       ingredients.calories
  #     end
  #   end
  #   total
  # end

end
