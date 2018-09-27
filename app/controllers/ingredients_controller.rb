class IngredientsController < ApplicationController
  def index
    @ingredients = Ingredient.all.sort_by do |ingredient|
      ingredient.users.count
    end.reverse
  end

  def show
    @ingredient = Ingredient.find(params[:id])
  end
end
