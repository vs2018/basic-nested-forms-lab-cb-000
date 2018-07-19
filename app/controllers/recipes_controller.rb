class RecipesController < ApplicationController
  def show
    @recipe = Recipe.find(params[:id])
  end

  def index
    @recipes = Recipe.all
  end

  def new
    @recipe = Recipe.new
    @person.ingredients.build(name: 'flour')
    @person.ingredients.build(name: 'seeds')

  end

  def create
  end
end
