class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @user_favs = []
    @user.favorited_meals.each do |fav|
      @user_favs.push(Meal.find(fav.meal_id))
    end
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:email] = @user.email
      redirect_to index_path
    else
      # render modal here
    end
  end

  def update
    @user = User.find(params[:id])
    respond_to do |format|
      if @user.update_attributes(user_params)
        format.html { redirect_to @user, notice: 'User was successfully updated.' }
        format.json { render :show, status: :created, location: @user }
      else
        format.html { render :edit }
        format.json { render json: @order.errors, status: :unprocessable_entity }
      end
    end
  end

  private

    def user_params
      params.require(:user).permit(:first_name, :last_name, :email,  :bio, :street_address, :zip_code, :chef_avatar, :updated_image)
    end
end
