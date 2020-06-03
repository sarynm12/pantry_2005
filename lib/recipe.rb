class Recipe
  attr_reader :name, :ingredients_required

  def initialize(name)
    @name = name
    @ingredient_required = {}
  end 

end
