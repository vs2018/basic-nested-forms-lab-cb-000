class RecipesController < ApplicationController
  def show
    @recipe = Recipe.find(params[:id])
  end

  def index
    @recipes = Recipe.all
  end

  def new
    @recipe = Recipe.new
    @person.addresses.build(address_type: 'work')
    @person.addresses.build(address_type: 'home')

  end

  def create
  end
end
