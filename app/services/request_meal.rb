require 'httparty'

class RequestMeal  
  def self.get
    response = HTTParty.get('https://www.themealdb.com/api/json/v1/1/random.php')
    data = JSON.parse(response.body)
    return meal_builder(data['meals'][0]) 
  end

  private

  def self.meal_builder(data)
    meal_ingredients = []
    for i in 1..20
      unless data["strIngredient#{i}"].nil? || data["strIngredient#{i}"].empty?
        meal_ingredients << {
          name: data["strIngredient#{i}"],
          measure: data["strMeasure#{i}"]
        }
      end
    end
    myhash = {
     title: data['strMeal'], category: data['strCategory'], 
     description: data['strInstructions'], country: data['strArea'],
     ingredients: meal_ingredients, image: data['strMealThumb'],
     video: data['strYoutube'].gsub('watch?v=', 'embed/')
    }
    return myhash
  end
end