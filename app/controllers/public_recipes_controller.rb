class PublicRecipesController < ApplicationController
  def index
    @public_recipes = Recipe.where(public: true)
    # @public_recipes = Recipe.includes(%i[recipe_foods user]).where(public: true).order(created_at: :desc)
  end
end
