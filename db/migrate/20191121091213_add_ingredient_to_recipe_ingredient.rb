class AddIngredientToRecipeIngredient < ActiveRecord::Migration[5.2]
  def change
    add_reference :recipe_ingredients, :ingredient, foreign_key: true
  end
end
