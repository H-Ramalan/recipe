class PublicRecipesController < ApplicationController
  def index
    @public_recipes = Recipe.where(public: true)
    # @public_recipes = Recipe.includes(%i[recipe_foods user]).where(public: true).order(created_at: :desc)
    @total = []
    @public_recipes.each do |public_recipe|
      public_recipe.recipe_foods.each do |recipe_food|
        @total << recipe_food.food.price * recipe_food.quantity
      end
    end
  end
end
