module MealsHelper
  def all_meals
    Meal.all
  end

  def set_favorited_meal
    user_favs = current_user.favorited_meals
    @existing_fav = user_favs.find_by(meal_id: @meal.id)
  end

  def all_cusines
    cuisines = []
    Meal.all.each do |meal|
      cuisines << meal.cuisine
    end

    cuisines = cuisines.uniq

  end

  def meal_mapper(meals)
    results = []
    meals.each do |meal|
      meal_hash = {}
      meal_hash[:chef_name] = meal.chef.first_name
      meal_hash[:coordinates] = meal.chef.geocode
      meal_hash[:meal] = meal.name
      meal_hash[:meal_id] = meal.id
      meal_hash[:description] = meal.description
      meal_hash[:price] = ActionController::Base.helpers.number_to_currency(meal.price)
      if meal.seed_image
        meal_hash[:image] = meal.seed_image
      else
        meal_hash[:image] = meal.image.url
      end
      results << meal_hash
    end
    return results
  end

end
