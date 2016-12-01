class MealsController < ApplicationController
  include ApplicationHelper
  include MealsHelper
  before_action :set_meal, only: [:show, :edit, :update, :destroy]

  def search
    @meals = Meal.search(params[:query])
    @query = params[:query]

    @results = meal_mapper(@meals)

    if request.xhr?
      print results
      render json: results
    end
  end

  def category
    @meals = Meal.where(cuisine: params[:category])
    @query = params[:category]

    @results = meal_mapper(@meals)

    if request.xhr?
      print results
      render json: results
    end
    render "search"
  end

  # GET /meals
  # GET /meals.json
  def index
    @meals = Meal.all.paginate(:page => params[:page], :per_page => 3)
  end

  # GET /meals/1
  # GET /meals/1.json
  def show
    @order = Order.new
    @order.meal = set_meal
    user_favs = current_user.favorited_meals
    @existing_fav = user_favs.find_by(meal_id: @meal.id)
  end

  def favorite
    @meal = set_meal
    user_favs = current_user.favorited_meals
    existing_fav = user_favs.find_by(meal_id: @meal.id)

    if existing_fav
      existing_fav.destroy
    else
      favorite = FavoritedMeal.new
      favorite.user = current_user
      favorite.meal = @meal
      favorite.save
    end
    if request.xhr?
      200
    end
    redirect_to :back
  end

  # GET /meals/new
  def new
    @meal = Meal.new
  end

  # GET /meals/1/edit
  def edit
  end

  # POST /meals
  # POST /meals.json
  def create
    @chef = current_user
    @meal = Meal.new(meal_params)

    respond_to do |format|
      if @meal.save
        format.html { redirect_to @meal, notice: 'Meal was successfully created.' }
        format.json { render :show, status: :created, location: @meal }
      else
        format.html { render :new }
        format.json { render json: @meal.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /meals/1
  # PATCH/PUT /meals/1.json
  def update
    respond_to do |format|
      if @meal.update(meal_params)
        format.html { redirect_to @meal, notice: 'Meal was successfully updated.' }
        format.json { render :show, status: :ok, location: @meal }
      else
        format.html { render :edit }
        format.json { render json: @meal.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /meals/1
  # DELETE /meals/1.json
  def destroy
    @meal.destroy
    respond_to do |format|
      format.html { redirect_to meals_url, notice: 'Meal was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_meal
      @meal = Meal.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def meal_params
      params.require(:meal).permit(:name, :description, :cuisine, :chef_id, :price, :image)
    end

end
