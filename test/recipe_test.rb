require 'minitest/autorun'
require 'minitest/pride'
require './lib/recipe'
require './lib/pantry'
require './lib/ingredient'
require 'pry'

class RecipeTest < Minitest::Test

  def test_it_exists
    ingredient1 = Ingredient.new({name: "Cheese", unit: "C", calories: 100})
    ingredient2 = Ingredient.new({name: "Macaroni", unit: "oz", calories: 30})
    recipe1 = Recipe.new("Mac and Cheese")
    assert_instance_of Recipe, recipe1
  end

  def test_it_has_attributes
    ingredient1 = Ingredient.new({name: "Cheese", unit: "C", calories: 100})
    ingredient2 = Ingredient.new({name: "Macaroni", unit: "oz", calories: 30})
    recipe1 = Recipe.new("Mac and Cheese")
    assert_equal "Mac and Cheese", recipe1.name
    assert_equal ({}), recipe1.ingredients_required
  end

  def test_it_can_add_ingredients
    ingredient1 = Ingredient.new({name: "Cheese", unit: "C", calories: 100})
    ingredient2 = Ingredient.new({name: "Macaroni", unit: "oz", calories: 30})
    recipe1 = Recipe.new("Mac and Cheese")
    recipe1.add_ingredient(ingredient1, 2)
    recipe1.add_ingredient(ingredient1, 4)
    recipe1.add_ingredient(ingredient2, 8)
    binding.pry
    assert recipe1.ingredients_required
  end

end

## Iteration 2 - Recipe and CookBook

# ```markdown
# There are **4** possible points in Iteration 2:
# 1. Recipe and CookBook Creation - including all attr_readers
# 2. Recipe #add_ingredient
# 3. Recipe #ingredients
# 4. CookBook #add_recipe
# ```
#
# Use TDD to build a `Recipe` and a `CookBook` class that respond to the following interaction pattern.
#
# For the `add_ingredient` method, the first argument is an Ingredient, and the second argument is the amount of the ingredient required for the Recipe.
#
# The `total_calories` method should sum the calories of each ingredient. The calories for each ingredient can be calculated by multiplying the `calories` attribute of the Ingredient by the amount of the ingredient required for the recipe.
#
# pry(main)> recipe2 = Recipe.new("Cheese Burger")
#
# pry(main)> cookbook = CookBook.new
# # => #<CookBook:0x00007faae6a42228 @recipes=[]>
#
# pry(main)> cookbook.add_recipe(recipe1)
#
# pry(main)> cookbook.add_recipe(recipe2)
#
# pry(main)> cookbook.recipes
# # => [#<Recipe:0x00007faae69c9698...>, #<Recipe:0x00007faae692a110...>]
# ```
