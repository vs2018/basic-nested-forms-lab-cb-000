class RecipesController < ApplicationController
  def show
    @recipe = Recipe.find(params[:id])
  end

  def index
    @recipes = Recipe.all
  end

  def new
    @recipe = Recipe.new
    @person.ingredients.build(address_type: 'work')
    @person.ingredients.build(address_type: 'home')

  end

  def create
  end
end
