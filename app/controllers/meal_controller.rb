require_relative '../services/request_meal'
require_relative '../repository/meals_repo'

class MealController < ApplicationController

  def index
  end

  def request_meal
    @meal = Meal.create 
    puts @meal.video
  end
end
