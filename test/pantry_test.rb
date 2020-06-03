require 'minitest/autorun'
require 'minitest/pride'
require './lib/pantry'
require './lib/ingredient'
require 'pry'

class PantryTest < Minitest::Test

  def test_it_exists
    pantry = Pantry.new
    assert_instance_of Pantry, pantry 
  end

end


# ## Iteration 1 - Ingredient and Pantry
#
# ```markdown
# There are **4** Possible Points in Iteration 1:
# 1. Ingredient Creation - including all attr_readers
# 2. Pantry Creation - including all attr_readers
# 3. Pantry #stock_check
# 4. Pantry #restock

#
# pry(main)> ingredient2 = Ingredient.new({name: "Macaroni", unit: "oz", calories: 200})
# # => #<Ingredient:0x007fd88582ed98...>
#
# pry(main)> pantry = Pantry.new
# # => #<Pantry:0x007fd8858863b8...>
#
# pry(main)> pantry.stock
# # => {}
#
# pry(main)> pantry.stock_check(ingredient1)
# # => 0
#
# pry(main)> pantry.restock(ingredient1, 5)
#
# pry(main)> pantry.restock(ingredient1, 10)
#
# pry(main)> pantry.stock_check(ingredient1)
# # => 15
#
# pry(main)> pantry.restock(ingredient2, 7)
#
# pry(main)> pantry.stock_check(ingredient2)
# # => 7
# ```
