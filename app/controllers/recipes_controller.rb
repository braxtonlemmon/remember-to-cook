class RecipesController < ApplicationController
  def new
    @recipe = Recipe.new
    @recipe.ingredients.build
  end

  def create
    @recipe = current_user.recipes.build(recipe_params)
    if @recipe.save
      puts '*********RECIPE MADE ************'
      redirect_to root_path
    else 
      render :new
    end
  end

  def edit
    @recipe.ingredients.build
  end
  
  def update
  end
  
  def index
    @recipes = Recipe.all
  end

  def show
    @recipe = Recipe.find(params[:id])
    @ingredients = @recipe.ingredients
    @steps = @recipe.steps
  end

  def index
    @recipes = current_user.recipes
  end

  private

    def recipe_params
      params.require(:recipe).permit(
        :title, :description, :user_id, 
        Ingredient.attribute_names.map(&:to_sym).push(:_destroy), 
        Step.attribute_names.map(&:to_sym).push(:_destroy)
      )
    end
end
