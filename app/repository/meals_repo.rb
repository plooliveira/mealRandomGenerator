class MealsRepo
  def initialize
    @meal = {}
  end

  def add(meal)
    @meals = meal
  end

  def give_a_meal
    @meal
  end
end