#require_relative '../services/request_meal'

class Meal  
  attr_reader :title, :description, :category, :country, :ingredients, :image, :video

  def initialize(attributes = {})
    @title = attributes[:title]
    @description = attributes[:description]
    @category = attributes[:category]
    @country = attributes[:country]
    @ingredients = attributes[:ingredients]
    @image = attributes[:image]
    @video = attributes[:video]
  end

  def self.create
    meal = RequestMeal.get
    Meal.new(meal)
  end
end