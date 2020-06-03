require 'minitest/autorun'
require 'minitest/pride'
require './lib/cook_book'
require './lib/recipe'
require './lib/pantry'
require './lib/ingredient'
require 'pry'

class CookBookTest < Minitest::Test

  def test_it_exists
    cookbook = CookBook.new
    assert_instance_of CookBook, cookbook
  end

  def test_it_can_add_recipes
    cookbook = CookBook.new
    recipe1 = Recipe.new("Mac and Cheese")
    recipe2 = Recipe.new("Cheese Burger")
    cookbook.add_recipe(recipe1)
    cookbook.add_recipe(recipe2)
    assert_equal [recipe1, recipe2], cookbook.recipes
  end

  def test_it_can_calculate_recipe_calories
    pantry = Pantry.new
    cookbook = CookBook.new
    recipe1 = Recipe.new("Mac and Cheese")
    ingredient1 = Ingredient.new({name: "Cheese", unit: "oz", calories: 50})
    ingredient2 = Ingredient.new({name: "Macaroni", unit: "oz", calories: 30})
    recipe1.add_ingredient(ingredient1, 2)
    recipe1.add_ingredient(ingredient2, 8)
    ingredient3 = Ingredient.new({name: "Ground Beef", unit: "oz", calories: 100})
    ingredient4 = Ingredient.new({name: "Bun", unit: "g", calories: 75})
    cookbook.add_recipe(recipe1)
    # cookbook.add_recipe(recipe2)
    # recipe2 = Recipe.new("Cheese Burger")
    # recipe2.add_ingredient(ingredient1, 2)
    # recipe2.add_ingredient(ingredient3, 4)
    # recipe2.add_ingredient(ingredient4, 1)
    assert_equal 440, recipe1.total_calories
  end

end

# ## Iteration 3
#
# ```markdown
# There are **4** possible points in Iteration 3:
# 1. Recipe #total_calories
# 2. CookBook #ingredients
# 3. CookBook #highest_calorie_meal
# 4. Pantry #enough_ingredients_for
# ```
#
# Use TDD to update your `Recipe`, `CookBook` and `Pantry` classes so that they respond to the following interaction pattern:
#
# ```ruby
# pry(main)> require './lib/pantry'
# # => true
#
# pry(main)> require './lib/ingredient'
# # => true
#
# pry(main)> require './lib/recipe'
# # => true
#
# pry(main)> require './lib/cook_book'
# # => true
#
# pry(main)> pantry = Pantry.new
# # => #<Pantry:0x007fd8858863b8...>
#
# pry(main)> cookbook = CookBook.new
# # => #<CookBook:0x00007faae6a42228 @recipes=[]>
#
# pry(main)> ingredient1 = Ingredient.new({name: "Cheese", unit: "C", calories: 100})
# # => #<Ingredient:0x00007faae6a207e0...>
#
# pry(main)> ingredient2 = Ingredient.new({name: "Macaroni", unit: "oz", calories: 30})
# # => #<Ingredient:0x00007faae69e3cf0...>
#
# pry(main)> recipe1 = Recipe.new("Mac and Cheese")
# # => #<Recipe:0x00007faae69c9698...>
#
# pry(main)> recipe1.add_ingredient(ingredient1, 2)
#
# pry(main)> recipe1.add_ingredient(ingredient2, 8)
#
# pry(main)> ingredient3 = Ingredient.new({name: "Ground Beef", unit: "oz", calories: 100})
# # => #<Ingredient:0x00007faae6950860...>
#
# pry(main)> ingredient4 = Ingredient.new({name: "Bun", unit: "g", calories: 75})
# # => #<Ingredient:0x00007faae694bb80...>
#
# pry(main)> recipe2 = Recipe.new("Cheese Burger")
# # => #<Recipe:0x00007faae692a110...>
#
# pry(main)> recipe2.add_ingredient(ingredient1, 2)
#
# pry(main)> recipe2.add_ingredient(ingredient3, 4)
#
# pry(main)> recipe2.add_ingredient(ingredient4, 1)
#
# pry(main)> recipe1.total_calories
# # => 440
#
# pry(main)> recipe2.total_calories
# # => 675
#
# pry(main)> cookbook.add_recipe(recipe1)
#
# pry(main)> cookbook.add_recipe(recipe2)
#
# pry(main)> cookbook.ingredients
# # => ["Cheese", "Macaroni", "Ground Beef", "Bun"]
#
# pry(main)> cookbook.highest_calorie_meal
# # => #<Recipe:0x00007faae692a110...>
#
# pry(main)> pantry.restock(ingredient1, 5)
#
# pry(main)> pantry.restock(ingredient1, 10)
#
# pry(main)> pantry.enough_ingredients_for?(recipe1)
# # => false
#
# pry(main)> pantry.restock(ingredient2, 7)
#
# pry(main)> pantry.enough_ingredients_for?(recipe1)
# # => false
#
# pry(main)> pantry.restock(ingredient2, 1)
#
# pry(main)> pantry.enough_ingredients_for?(recipe1)
# # => true
# ```
