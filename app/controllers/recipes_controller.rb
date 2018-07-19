class RecipesController < ApplicationController
  def show
    @recipe = Recipe.find(params[:id])
  end

  def index
    @recipes = Recipe.all
  end

  def new
    @recipe = Recipe.new
    @recipe.ingredients.build(name: 'flour')
    @recipe.ingredients.build(name: 'seeds')

  end

  def create
     recipe = Recipe.create(recipe_params)
    redirect_to recipe_path
  end
  
  
  private
  
  def recipe_params
  params.require(:person).permit(
    :name,
    addresses_attributes: [
      :street_address_1,
      :street_address_2,
      :city,
      :state,
      :zipcode,
      :address_type
    ]
  )
end
end
