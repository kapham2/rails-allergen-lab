class RecipesController < ApplicationController
  def index
    @recipes = Recipe.all
  end

  def sorted
    @recipes = Recipe.all.sort_by do |recipe|
      recipe.ingredients.count
    end.reverse
  end

  def new
    @recipe = Recipe.new
    @users = User.all
  end

  def create
    recipe = Recipe.create(recipe_params)
    redirect_to recipes_path
  end

  private

  def recipe_params
    params.require(:recipe).permit(:name, :user_id)    
  end
end
