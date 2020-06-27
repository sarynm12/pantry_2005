require './lib/ingredient'

class Pantry
  attr_reader :stock

  def initialize
    @stock = Hash.new(0)
  end

  def stock_check(ingredient)
    @stock[ingredient]
  end

  def restock(ingredient, amount)
    @stock[ingredient] += amount
  end

  def enough_ingredients_for?(recipe)
    recipe.ingredients_required.all? do |ingredient, amount|
      stock_check(ingredient) >= amount
    end
    # @stock.all? do |ingredient, amount|
    #   if recipe.ingredients_required.include?(stock) == true && stock_check(ingredient) >=   recipe.ingredients_required[ingredient]
    #     true
    #   else
    #     false
    #   end
    # end
  end

end
