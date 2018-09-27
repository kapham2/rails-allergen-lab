class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
  end

  def destroy
    # User.destroy(params[:id])
    user = User.find(params[:id])
    user.recipes.each do |recipe|
      recipe.recipe_ingredients.each do |ingr|
        ingr.destroy
      end
      recipe.destroy
    end
    user.destroy
    redirect_to new_user_path
  end

  def new
    @user = User.new
  end

  def create
    user = User.create(user_params)
    redirect_to user
  end

  private

  def user_params
    params.require(:user).permit(:name)    
  end
end
