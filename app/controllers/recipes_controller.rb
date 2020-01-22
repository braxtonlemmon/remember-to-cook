class RecipesController < ApplicationController
  def new
    @recipe = Recipe.new
  end

  def create
    @recipe = current_user.recipes.build(recipe_params)
    if @recipe.save
      puts '*********RECIPE MADE ************'
      redirect_to root_path
    else 
      redirect_to root_path
    end
  end

  def edit
  end
  
  def update
  end
  
  def index
  end

  def show
  end

  def index
  end

  private

    def recipe_params
      params.require(:recipe).permit(:title, :description, :user_id, ingredients_attributes: [:name, :recipe_id], steps_attributes: [:step, :recipe_id])
    end
end
