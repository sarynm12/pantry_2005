class Recipe
  attr_reader :name, :ingredients_required, :ingredients

  def initialize(name)
    @name = name
    @ingredients_required = Hash.new(0)
  end

  def add_ingredient(ingredient, amount)
    @ingredients << ingredient
    @ingredients_required[ingredient] = amount
    @ingredients_required.values.sum do |value|
      value += amount
    end
    ingredients_required
  end

  def total_calories
    @ingredients.sum do |ingredient|
      ingredients.calories
    end
    total
  end
end
