require './lib/ingredient'

class Pantry
  attr_reader :stock

  def initialize
    @stock = Hash.new(0)
  end

  def stock_check(ingredient)
    @stock.count do |value|
      value.count
    end

  end

  def restock(ingredient, amount)
    @stock.sum do |value|
      value += amount
    end
  end

end
