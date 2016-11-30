module MealsHelper
  def all_meals
    Meal.all
  end

  def set_favorited_meal
    user_favs = current_user.favorited_meals
    @existing_fav = user_favs.find_by(meal_id: @meal.id)
  end

end
