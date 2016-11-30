class HomeController < ApplicationController
  def index
    @featured_meals = Meal.recent
  end
end
